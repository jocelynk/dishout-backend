var conString = "";
var knex = require('knex')({
    client: 'pg',
    //connection: conString,
    debug: true,
    connection: {
        host: '127.0.0.1',
        user: 'postgres',
        password: '',
        database: 'dishout'
    }
});

module.exports = knex;
