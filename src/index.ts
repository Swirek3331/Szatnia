import express from 'express';
import mysql from 'mysql';

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

app.post("/dbcreate", (req, res) => {
    db.query("CREATE DATABASE IF NOT EXISTS szatnia", (err, result) => {
        if (err) {
            throw err
        }
        console.log(result)
        res.send("Baza danych stworzona!")
    })
})

app.listen(3000, () => {
    console.log("Śmiga na porcie 3000!")
})
