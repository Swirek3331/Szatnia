import { exec } from 'child_process';
import express from 'express';
import mysql from 'mysql2';
import path from 'path';

const rootDirectory = path.dirname(__dirname);

const app = express()

export const db = mysql.createConnection({
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

app.get("/", (req, res) => {
    res.sendFile(path.join(rootDirectory + "/public/index.html"))
})

app.use(express.static(path.join(rootDirectory, "public")))
app.use(express.static(path.join(rootDirectory, "assets")))
app.use(express.static(path.join(rootDirectory, "dist/web")))

app.listen(3000, () => {
    console.log("http://127.0.0.1:3000/")
})

function createDB(): void
{
    db.query("CREATE DATABASE IF NOT EXISTS szatnia", (err, result) => {
        if (err) {
            throw err
        }
        console.log("Baza danych stworzona!")
    })
}

export function dumpDB()
{
    exec(`mysqldump -u root szatnia > ${rootDirectory}/dump.sql`, (err, stdout, stderr) => {
        if (err)
        {
            console.error(`exec error: ${err}`)
            console.error(`stderr: ${stderr}`)
            return;
        }
        //console.log(`stdout: ${stdout}`)
        //console.error(`stderr: ${stderr}`)
    })
}

export function importDB()
{
    exec(`mysql -u root szatnia < ${rootDirectory}/dump.sql`, (err, stdout, stderr) => {
        if (err)
        {
            console.error(`exec error: ${err}`)
            return
        }
        //console.log(`stdout: ${stdout}`)
        //console.error(`stderr: ${stderr}`)
    })
}
