const express = require('express');
const fs = require('fs');

const mySQL = require('mysql');

const router = express.Router();

const db = mySQL.createConnection({host: 'localhost', user: 'dani', password: '495sac', database: 'rgpd-app'});

const app = express();
const port = 3011

db.connect(function(err) {
  if(err) throw err;
  console.log("Connected to MySQL database!");
});

app.listen(port, () => {
  console.log(`rgpd-api listening at http://localhost:${port}`)
});
