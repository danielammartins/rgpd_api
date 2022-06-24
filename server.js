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
  methods: ["GET", "PUT", "DELETE"],
  credentials: true,
}));

app.use(express.json())
app.use(express.urlencoded({extended: false}))

db.connect(function(err) {
  if(err) throw err;
  console.log("Connected to MySQL database!");
});

app.get('/tecontent/:id', (req, res) => {
  db.query(`SELECT * FROM tecontent WHERE id = ${db.escape(req.params.id)}`, function(err, data, fields) {
    if (err) throw err;
    res.json(data);
  });
});

app.put('/tecontent/:id', (req, res) => {
  let values = [
    req.params.id,
    req.body.content
  ];
  db.query(`REPLACE INTO tecontent(id, content) VALUES (?)`, [values], function(err, data, fields) {
    if (err) throw err;
    res.json({
      status: 200,
      message: "Conteúdo atualizado com sucesso!"
    })
  })
});

app.listen(port, () => {
  console.log(`rgpd-api listening at http://localhost:${port}`)
});


