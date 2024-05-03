import { db } from "../index";

export function getRooms()
{
    return db.query("SELECT * FROM room")
}

export function getBoxes()
{
    return db.query("SELECT * FROM box")
}

export function getItems()
{
    return db.query("SELECT * FROM item")
}

