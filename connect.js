const sql = require('mssql')   /// MSSQL REQUIRE


// SQL CONFIG ITS HELP TO CONNECT DB IT IS CONNECTER STRING
const sqlConfig = {
    user: "interndb",
    password: "Int@2022",
    server: "mssql.esmsys.in",
    database: "interndb",
    port: 14251,
    options: {
        encrypt: false,
        useUTC: true,
    }
}

sql.on('error', err => {
    console.log(err.message);
})

// ASYNC FUNCTION TO CONNECT AND GET DB DATA
async function getData() {
    try {
        let pool = await sql.connect(sqlConfig);
        const result = await pool.request().query('SP_TWOTABLEDATA')
        console.dir(result)
       
    } catch (err) {
        console.log(err);
    }
}

// CALL FUNCTION
getData();