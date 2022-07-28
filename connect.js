const sql = require('mssql')   /// MSSQL REQUIRE


// SQL CONFIG ITS HELP TO CONNECT DB IT IS CONNECTER STRING
const sqlConfig = {
    user: User_Namme,
    password: User_Pass,
    server: Server,
    database: Database,
    port: PORT,
    options: {
        encrypt: false,
        useUTC: true,
    }
}


sql.on('error', err => {
    console.log(err.message);
})

// ASYNC FUNCTION TO CONNECT AND GET DB DATA
(async function getData() {
    try {
        let pool = await sql.connect(sqlConfig);
        const result = await pool.request().query('select * from table_name')
        console.dir(result)
       
    } catch (err) {
        console.log(err);
    }
})()
// CALL FUNCTION
getData();