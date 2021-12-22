let express = require("express");
let app = express();
const db = require('./models');
app.set("view engine", "ejs");

const { mailingUsers } = require('./models')

mailingUsers.sync().then((data) => {
    console.log("Table success");
}).catch((err) => {
    console.log("Erooor");
});


app.listen(3000);