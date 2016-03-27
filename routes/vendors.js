var database = require('../server/database.js');
console.log('asdfadsf');
console.log(database);
exports.vendors = function(req, res) {
    database('dbo.vendors')
        .join('dbo.addresses', 'dbo.addresses.address_id', '=', 'dbo.vendors.address_id')
        .select('dbo.vendors.vendor_name', 'dbo.vendors.phone_number', 'dbo.addresses.street1', 'dbo.addresses.street2', 'dbo.addresses.street3', 'dbo.addresses.city', 'dbo.addresses.state', 'dbo.addresses.zipcode').then(function(v) {
        var vendors = [];
        for(var i = 0; i < v.length; i++) {
            vendors.push(v[i]);
        }
        res.json(vendors);

    });
}