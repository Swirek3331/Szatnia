<!DOCTYPE html>
<html lang="pl">
<head>
    <title>Szatnia</title>

    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
</head>
<body>
    
    <?php

        require_once("connection.php");

        $connection = @new mysqli($host, $user, $password, $db);

        $room = $_POST["boxRoomInput"];
        $box = $_POST["boxInput"];

        $query1 = $connection->query("SELECT * FROM room WHERE id=".$room);
        $query2 = $connection->query("SELECT * FROM box WHERE id=".$box);

        for ($i = 0; $i < $query1->num_rows; $i++) {
            $row = $query1->fetch_assoc();
            echo "Pomieszczenie: ".$row["id"]."<br/>";
        }

        for ($i = 0; $i < $query2->num_rows; $i++) {
            $row = $query2->fetch_assoc();
            echo "Przedział: ".$row["id"]."<br/>";
        }

    ?>

</body>
</html>