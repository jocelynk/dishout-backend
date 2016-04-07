var knex = require('knex')({
    client: 'pg',
    //connection: conString,
    debug: true,
    connection: {
        host: '127.0.0.1',
        user: '',
        password: '',
        database: ''
    }
});

module.exports = knex;
