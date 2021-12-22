let express = require("express");
let app = express();
const db = require('./models');
let bodyparser = require('body-parser')
let urlencodedParser = bodyparser.urlencoded({extended:false})
app.set("view engine", "ejs");

const { mailingUsers } = require('./models')

app.use(express.static(__dirname + 'assets'))

app.get("/", (req, res) => {
    res.render('main')
})

app.post("/", urlencodedParser, (req, res) => {
    response = {
        mail : req.body.mail
    }
    res.send(mail)
})

mailingUsers.sync().then((data) => {
    console.log("Table success");
}).catch((err) => {
    console.log("Erooor");
});


app.listen(3000);