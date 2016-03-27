var conString = "postgres://username:localhost@pw/dishout";
var knex = require('knex')({
    client: 'pg',
    //connection: conString,
    debug: true,
    connection: {
        host: '127.0.0.1',
        user: 'username',
        password: 'password',
        database: 'dishout'
    }
});

module.exports = knex;
