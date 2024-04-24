import express from 'express';
import mysql from 'mysql';
import path from 'path';

const rootDirectory = path.dirname(__dirname);

const app = express()

const db = mysql.createConnection({
    host: "localhost",
    user: "root",
    password: "",
    database: "szatnia"
})

db.connect((err) => {
    if (err) {
        throw err
    }
    console.log("Połączono z bazą danych!")
})

app.get("/dbcreate", (req, res) => {
    db.query("CREATE DATABASE IF NOT EXISTS szatnia", (err, result) => {
        if (err) {
            throw err
        }
        console.log(result)
        res.send("Baza danych stworzona!")
    })
})

app.get('/', function(req, res) {
    res.sendFile(path.join(rootDirectory + '/public/index.html'));
});

app.listen(3000, () => {
    console.log("Śmiga na porcie 3000!")
})



