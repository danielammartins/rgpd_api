const express = require('express');
const fs = require('fs');
const cors = require('cors');

const mySQL = require('mysql');

const router = express.Router();

const db = mySQL.createConnection({host: 'localhost', user: 'dani', password: '495sac', database: 'rgpd-app'});

const app = express();
const port = 3011

app.use(cors({
  origin: ["http://localhost:3000"],
  methods: ["GET", "POST", "DELETE"],
  credentials: true,
})
);

db.connect(function(err) {
  if(err) throw err;
  console.log("Connected to MySQL database!");
});

app.listen(port, () => {
  console.log(`rgpd-api listening at http://localhost:${port}`)
});

app.get('/api/text', (req, res) => {
  db.query("SELECT * FROM tecontent WHERE id='1'", function(err, data, fields) {
    if (err) throw err;
    res.json(data[0].content);
  });
});

app.get('/text', (req, res) => {
  console.log("Oi2");   
});