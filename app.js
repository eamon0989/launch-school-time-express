const express = require("express");
const handlebars = require("express-handlebars")
const morgan = require("morgan");
const flash = require("express-flash");
const session = require("express-session");
const { body, validationResult, sanitizeBody } = require("express-validator");


const app = express();
const host = "localhost";
const port = 3000;

app.engine("handlebars", handlebars());
app.set("views", "./views");
app.set("view engine", "handlebars");

app.use(express.static("public"));
app.use(express.urlencoded({ extended: false }));
app.use(express.text());


app.get("/", (req, res) => {
  res.redirect('home');
})

app.get("/home", (req, res) => {
  res.render('home');
})

app.get("/javascript", (req, res) => {
  res.render("javascript")
})

app.get("/ruby", (req, res) => {
  res.render("ruby")
})

app.post("/submit",
  [
    body('hours_per_week')
      .trim()
      .escape(),
    body('total_hours')
      .trim()
      .escape(),
  ],
  (req, res) => {
    let track = req.body.track;
    if (track === 'javascript') {
      res.redirect('javascript');
    } else {
      res.redirect('ruby');
    }
})

app.get("/ruby", (req, res) => {
  res.render('ruby');
})

app.get("/javascript", (req, res) => {
  res.render('javascript');
})

app.listen(port, host, () => {
  console.log(`Listening on port ${port} of ${host}!`);
})
