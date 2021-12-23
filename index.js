let express = require("express");
let app = express();
const db = require('./models');
let bodyparser = require('body-parser')
let urlencodedParser = bodyparser.urlencoded({extended:false})
app.set("view engine", "ejs");

const { mailingUsers } = require('./models');
const { text } = require('./models');
const { response, request } = require("express");


app.use(express.static(__dirname + "/assets"));


app.post("/", urlencodedParser, (req, res) => {
    mailingUsers.create({
        mail: req.body.mail+""
    }).catch((err) => {
        if (err) {
            console.log(err)
        }
    });
    res.send("Yout subscribe is done!")
})

mailingUsers.sync().then((data) => {
    console.log("Table 'mailingUsers' has been created");
}).catch((err) => {
    console.log("Erooor");
});

text.sync().then((data) => {
    console.log("Table 'text' has been created");
}).catch((err) => {
    console.log("Erooor");
});

let part1 = [];




app.get("/", async (req, res) => {

    const a = await text.findAll();
    console.log(a[0].text, "asdasd")

   /* let a = text.async().then(() => {
        return text.findAll({
            where : { partName: 'top1'},
            raw: true
        });
    }).then((data) => {
        const b = data[0].text;
        console.log(data[0].text);
        console.log(b);
    })
    .catch((err) => {
        console.log(err);
    });*/

    res.render('main')
})


app.listen(3000);