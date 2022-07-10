const express = require('express');
const cors = require('cors');
const querystring = require("querystring");
const { Curl } = require("node-libcurl");
const https = require('https');
const fs = require('fs');
const path = require('path');

const mySQL = require('mysql');

const router = express.Router();

const db = mySQL.createConnection({host: 'localhost', user: 'root', password: '', database: 'rgpd-app'});

const app = express();
const port = 3011

app.use(cors({
  origin: ["http://localhost:3000"],
  methods: ["GET", "PUT", "DELETE"],
  credentials: true,
}));

app.use(express.json())
app.use(express.urlencoded({extended: false}))

db.connect(function(err) {
  if(err) throw err;
  console.log("Connected to MySQL database!");
});

app.get('/question/:id', (request, result) => {
  if(request.params.id != undefined) {
    let sql = "SELECT * FROM questions WHERE id='" + request.params.id + "';";
    db.query(sql, (err, res) => {
      if(err) throw err;

      result.send({
        "id": res[0].id,
        "question": res[0].question,
        "yes": res[0].yes,
        "no": res[0].no,
        "type": res[0].type,
        "text": res[0].text
      })
    })
  }
  else {
    res.send({"question": -1});
  }
}); 

/*
app.listen(port, () => {
  console.log(`rgpd-api listening at http://localhost:${port}`)
});*/

const sslServer = https.createServer({
  key: fs.readFileSync(path.join(__dirname, 'cert', 'key.pem')),
  cert: fs.readFileSync(path.join(__dirname, 'cert', 'cert.pem'))
}, app);

sslServer.listen(port, () => console.log(`Secure rgpd-api listening at https://localhost:${port}`));