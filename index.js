const express = require('express');
const { config } = require('./src/config/index');
const app = express();

app.use(express.json());
app.all('/', function (req, res, next) {
  res.header('Access-Control-Allow-Origin', '*');
  res.header('Access-Control-Allow-Headers', 'X-Requested-With');
  next();
});
app.use(express.urlencoded({ extended: true }));

// Routes
app.use(require('./src/routes/usersRoutes'));

app.listen(config.localport, function () {
  console.log(`Listening http://localhost:${config.localport}`);
});
