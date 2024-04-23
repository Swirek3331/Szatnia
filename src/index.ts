import express from 'express';
import mysql from 'mysql';

const app = express()

const db = mysql.createConnection({
    host: "localhost",
    user: "root",
    password: "",
})

db.connect((err) => {
    if (err) {
        throw err
    }
    console.log("Połączono z bazą danych!")
})

app.listen(3000, () => {
    console.log("Śmiga na porcie 3000!")
})
