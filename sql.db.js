const sql = require('mssql')

const sqlConfig = {
    user: 'interndb',
    password: 'Int@2022',
    database: 'interndb',
    server: 'mssql.esmsys.in',
    port:14251,
    pool: {
        max: 10,
        min: 0,
        idleTimeoutMillis: 30000
    }
}

sql.on('error', err => {
    console.log(err.message);
})

async function getData() {
    try {
        // make sure that any items are correctly URL encoded in the connection string

        let pool = await sql.connect(sqlConfig);

        console.log('run');
        console.log(pool);
        const result = await pool.request().query('select * from dbo.Empolyee3')
        console.dir(result)
    } catch (err) {
        console.log(err);
    }
}
getData()