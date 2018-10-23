const express = require('express'); // framework for web development
const path = require('path'); // working with filepaths
const routes = require('./routes'); // import our routes file
const app = express(); // start the server
const port = process.env.PORT || 1338; // set the listening server port
const router = express.Router(); // call the routing functions in express
const bodyParser = require('body-parser'); // json parser for requests/responses

app.set('view engine', 'html');

app.use([bodyParser.json(), bodyParser.urlencoded({extended: true})]); // encode 
// requests and responses
app.use(express.static(path.join(__dirname, '../client'))); // static files directory
app.use((err, req, res, next) => {
    console.log(err);
    res.status(500).send('Server Error');
}); // Default error message
app.use('/api', routes); // url to access app

router.get('/', (req, res, next) => {
    res.sendFile(path.join(__dirname, '..', 'client', 'index.html'));
}); // landing page is index.html

app.listen(port, (err) => {
    err
    ? console.log('Cannot connect ...', err)
    : console.log(`Connected! Server is listening on port ${port}`);
});
