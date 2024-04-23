"use strict";
var __importDefault = (this && this.__importDefault) || function (mod) {
    return (mod && mod.__esModule) ? mod : { "default": mod };
};
Object.defineProperty(exports, "__esModule", { value: true });
const express_1 = __importDefault(require("express"));
const mysql_1 = __importDefault(require("mysql"));
const app = (0, express_1.default)();
const db = mysql_1.default.createConnection({
    host: "localhost",
    user: "root",
    password: "",
    database: "szatnia"
});
db.connect((err) => {
    if (err) {
        throw err;
    }
    console.log("Połączono z bazą danych!");
});
app.get("/dbcreate", (req, res) => {
    db.query("CREATE DATABASE IF NOT EXISTS szatnia", (err, result) => {
        if (err) {
            throw err;
        }
        console.log(result);
        res.send("Baza danych stworzona!");
    });
});
app.listen(3000, () => {
    console.log("Śmiga na porcie 3000!");
});
