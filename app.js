"use strict"

const express = require('express')
const app = express();

// Get api
app.get((req,res)=>{
    res.send("success")
})


// Server connect
 app.listen(5000, function () {
    console.log('Server is running..');
});