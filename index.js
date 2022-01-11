let express = require("express");
let app = express();
const db = require('./models');
let bodyparser = require('body-parser')
let urlencodedParser = bodyparser.urlencoded({extended:false})
app.set("view engine", "ejs");

const { mailingUsers } = require('./models');
const { text } = require('./models');
const { imgUrl } = require('./models');
const { response, request } = require("express");
const { categories } = require('./models');
const { steps } = require('./models');
const { singlepics } = require('./models');
const { comments } = require('./models');



app.use(express.static(__dirname + "/assets"));


app.post("/", urlencodedParser, (req, res) => {
    mailingUsers.create({
        mail: req.body.email+""
    }).catch((err) => {
        if (err) {
            console.log(err)
        }
    });
    res.send("Your subscribe is done!")
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

imgUrl.sync().then((data) => {
    console.log("Table 'imgUrl' has been created");
}).catch((err) => {
    console.log("Erooor");
});

categories.sync().then((data) => {
    console.log("Table 'categories' has been created");
}).catch((err) => {
    console.log("Erooor");
});

steps.sync().then((data) => {
    console.log("Table 'steps' has been created");
}).catch((err) => {
    console.log("Erooor");
});

singlepics.sync().then((data) => {
    console.log("Table 'singlepics' has been created");
}).catch((err) => {
    console.log("Erooor");
});

comments.sync().then((data) => {
    console.log("Table 'comments' has been created");
}).catch((err) => {
    console.log("Erooor");
});


app.get("/", async (req, res) => {

    // const b = await text.findOne({where: {partName: 'a4'}})
    // console.log(b)
    

    const a = await text.findAll();
    const b = await imgUrl.findAll();
    const Categories = await categories.findAll()
    const Steps = await steps.findAll()
    const SinglePics = await singlepics.findAll()
    const Comments = await comments.findAll()

    res.render('main', {
        // top part
        a : Categories,
        b : Steps,
        c : SinglePics,
        d : Comments,
    })
})


app.listen(3000);