<!DOCTYPE html>
<html lang="pl">
<head>
    <title>Szatnia</title>

    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />

    <link rel="stylesheet" href="http://127.0.0.1/Szatnia/public/main.css" type="text/css"/>
</head>
<body>
    <main class="flex">
        <section>
            <h2>Pomieszczenia</h2>
            <form>
                <div class="form-row">
                    <label for="roomID">Numer pomieszczenia</label>
                    <input type="number" id="roomID" name="roomID"/>    
                </div>

                <div class="buttons-container">
                    <input type="button" value="Poprzedni"/>
                    <input type="submit" value="Usuń"/>
                    <input type="reset" value="Wyczyść"/>
                    <input type="submit" value="Dodaj"/>
                    <input type="button" value="Następny"/>
                </div>
            </form>
        </section>
        <section>
            <h2>Bloczki</h2>
            <form>
                <div class="form-row">
                    <label for="itemID">Numer bloczka</label>
                    <input type="number" id="blockID" name="blockID"/>
                </div>

                <div class="form-row">
                    <label for="state">Stan</label>
                    <select id="state" name="state">
                        <option>Numerek jest</option>
                        <option>Numerka brak</option>
                        <option>Brak miejsca</option>
                    </select>  
                </div>

                <div class="form-row">
                    <label for="material">Rodzaj bloczka</label>
                    <select id="material" name="material">
                        <option>Typowy</option>
                        <option>Stary</option>
                        <option>Drewniany</option>
                        <option>Drewniany?</option>
                    </select>
                </div>

                <div class="form-row">
                    <label for="comment">Uwagi</label>
                    <textarea id="comment" name="comment"></textarea>
                </div>

                <div class="buttons-container">
                    <input type="button" value="Poprzedni"/>
                    <input type="submit" value="Usuń"/>
                    <input type="reset" value="Wyczyść"/>
                    <input type="submit" value="Dodaj"/>
                    <input type="button" value="Następny"/>
                </div>
            </form>
        </section>
        <section>
            <h2>Przedziały</h2>
            <form>
                <div class="form-row">
                    <label for="boxID">Numer przedziału</label>
                    <input type="number" id="boxID" name="boxID"/> 
                </div>

                <div class="form-row">
                    <label for="roomID2">Numer pomieszczenia</label>
                    <input type="number" id="roomID2" name="roomID2"/>
                </div>

                <div class="form-row">
                    <label for="accesability">Dostępność</label>
                    <input type="checkbox" id="accesability" name="accesability"/>
                </div>

                <div class="buttons-container">
                    <input type="button" value="Poprzedni"/>
                    <input type="submit" value="Usuń"/>
                    <input type="reset" value="Wyczyść"/>
                    <input type="submit" value="Dodaj"/>
                    <input type="button" value="Następny"/>
                </div>
            </form>
        </section>
    </main>
</body>
</html>