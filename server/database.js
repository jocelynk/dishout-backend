var conString = "postgres://postgres:<db_pswd>@localhost/dishout";
var knex = require('knex')({
    client: 'pg',
    connection: conString,
    debug: true
    /*connection: {
     host     : '127.0.0.1',
     user     : 'your_database_user',
     password : 'your_database_password',
     database : 'myapp_test'
     */
});