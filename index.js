let express = require("express");
let app = express();
const db = require('./models');
let bodyparser = require('body-parser')
let urlencodedParser = bodyparser.urlencoded({extended:false})
app.set("view engine", "ejs");

const { mailingUsers } = require('./models');
const { text } = require('./models');
const { imgUrl } = require('./models')
const { response, request } = require("express");


app.use(express.static(__dirname + "/assets"));


app.post("/", urlencodedParser, (req, res) => {
    mailingUsers.create({
        mail: req.body.email+""
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

imgUrl.sync().then((data) => {
    console.log("Table 'imgUrl' has been created");
}).catch((err) => {
    console.log("Erooor");
});


app.get("/", async (req, res) => {

    // const b = await text.findOne({where: {partName: 'a4'}})
    // console.log(b)
    

    const a = await text.findAll();
    const b = await imgUrl.findAll();

    res.render('main', {
        // top part
        one : a[0].text,
        one1 : a[1].text,
        one2 : a[2].text,
        one3 : a[3].text,

        // about us
        second : a[4].text,
        second1 : a[5].text,
        second2 : a[6].text,
        second3 : a[7].text,
        second4 : a[8].text,
        second5 : a[9].text,
        second6 : a[10].text,

        //comments

        comment1 : a[11].text,
        comment1Name : a[12].text,
        comment2 : a[13].text,
        comment2Name : a[14].text,
        comment3 : a[15].text,
        comment3Name : a[16].text,
        comment4 : a[17].text,
        comment4Name : a[18].text,

        //img

        main : b[19].url,

        aboutUs : b[0].url,
        aboutUs2 : b[1].url,

        miniPic : b[20].url,
        miniPic2 : b[21].url,
        miniPic3 : b[22].url,
        miniPic4 : b[23].url,

        categories : b[2].url,
        categories2 : b[3].url,
        categories3 : b[4].url,
        categories4 : b[5].url,
        categories5 : b[6].url,

        comment1Pic : b[7].url,
        comment1Pic2 : b[8].url,
        comment1Pic3 : b[9].url,

        comment2Pic : b[10].url,
        comment2Pic2 : b[11].url,
        comment2Pic3 : b[12].url,

        comment3Pic : b[13].url,
        comment3Pic2 : b[14].url,
        comment3Pic3 : b[15].url,

        comment4Pic : b[16].url,
        comment4Pic2 : b[17].url,
        comment4Pic3 : b[18].url,

    })
})


app.listen(3000);