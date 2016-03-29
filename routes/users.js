var database = require('../server/database.js');
console.log("*****Users API Initiated*****")

exports.insertUser = function(req, res) {
  console.log("*****Made Insert User Call*****");
  var query = req.body;
  database('dbo.users')
      .insert({email: query.email, username: query.username}).then(function(row) {
        database('dbo.users')
            .join('dbo.levels', 'dbo.levels.level_id', '=', 'dbo.users.level_id')
            .select('dbo.users.email', 'dbo.users.username', 'dbo.users.userpoints', 'dbo.levels.level_no', 'dbo.levels.level_name', 'dbo.levels.points_to_next_level', 'dbo.levels.prize')
            .where({email: query.email, username: query.username})
            .then(function(user) {
              res.json(user);
            });
      });
}

exports.user = function(req, res) {
  console.log("*****Made Get User Call*****");
  var query = req.query;
  database('dbo.users')
      .join('dbo.levels', 'dbo.levels.level_id', '=', 'dbo.users.level_id')
      .select('dbo.users.email', 'dbo.users.username', 'dbo.users.userpoints', 'dbo.levels.level_no', 'dbo.levels.level_name', 'dbo.levels.points_to_next_level', 'dbo.levels.prize')
      .where({email: query.email, username: query.username})
      .then(function(user) {
        res.json(user);
      });
}