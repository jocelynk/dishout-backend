var database = require('../server/database.js');
console.log("*****Dishes API Initiated*****")

/*
Check in Dish:
(Request: dish_number, user_id, vendor_id, check_in_date)
- Add a row in dish_transaction table
- Update the user's cur_transaction column in users table
*/
exports.checkinDish = function(req, res) {
	console.log("*****Made Checkin Dish Call*****");
	var query = req.body;
	database('dbo.dishes')
		.where('dish_number', '=', query.dish_number)
		.increment('uses', 1)
		.then(function(row){
			database('dbo.dish_transactions')
				.insert({user_id: query.user_id, vendor_id: query.vendor_id, check_in_date: query.check_in_date}, 'dish_transaction_id')
				.then(function(dish_transaction_id) {
					console.log('Inserted trans id '+dish_transaction_id);
					database('dbo.users')
						.where('user_id','=', query.user_id)
						.update({cur_transaction: dish_transaction_id[0]})
						.then(function(rows){
							res.json("Checkin finished.");
						});
				});
		});
}


/*
Check Out Dish:
(Request: user_id, drop_off_location_id, check_out_date)
- Obtain the dish_id from users table
- Set the cur_transaction to -1 in users table
- Update the row in dish_transactions table with 
  drop_off_location_id and check_out_date columns
*/
exports.checkoutDish = function(req, res){
	console.log("*****Made Checkout Dish Call*****");
	var query = req.body;
	var transaction_id;
	database('dbo.users')
		.select('*')
		.where('user_id','=', query.user_id)
		.then(function(row){
			transaction_id = row[0].cur_transaction;
			database('dbo.users')
			.where('user_id', '=', query.user_id)
			.increment('userpoints', 10)
			.then(function(row){	
			});
		});
	database('dbo.users')
		.where('user_id', '=', query.user_id)
		.update({cur_transaction: -1})
		.then(function(rows){
			database('dbo.dish_transactions')
				.where('dish_transaction_id', '=', transaction_id)
				.update({drop_off_location_id: query.drop_off_location_id, check_out_date: query.check_out_date})
				.then(function(rows){
					res.json("Checkout finished.");
				});
		});
}