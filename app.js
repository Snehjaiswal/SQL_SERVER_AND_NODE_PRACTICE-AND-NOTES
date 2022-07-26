
const express = require('express')
const app = express();

app.get('/', function (req, res) {

  

    // config for your database
    
    

    // connect to your database
    sql.connect(config, function (err) {

        if (err) console.log(err);

        // create Request object
        var request = new sql.Request();

        // query to the database and get the records
        request.query('select * from dbo.Employee3', function (err, recordset) {

            if (err) console.log(err)

            // send records as a response
            console.log(recordset);
            res.send(recordset);

        });
    });
});

var server = app.listen(5000, function () {
    console.log('Server is running..');
});