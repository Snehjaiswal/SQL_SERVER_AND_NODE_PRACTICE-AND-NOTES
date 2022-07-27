const sql = require('mssql')   /// MSSQL REQUIRE


// SQL CONFIG ITS HELP TO CONNECT DB IT IS CONNECTER STRING


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