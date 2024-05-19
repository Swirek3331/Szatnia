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

        $room = $_POST["roomInput"];

        $sql = "SELECT box.* FROM box, room WHERE box.room_id=room.id AND room.id=$room";
        $result = $connection->query($sql);

        echo "<h2>Pomieszczenie $room</h2>";

        if ($result->num_rows > 0)
        {
            echo "<table>";
                echo "<tr>";
                    echo "<th>Numer</th>";
                    echo "<th>Dostępność</th>";
                echo "</tr>";

            while ($row = $result->fetch_assoc())
            {
                echo "<tr>";
                    echo "<td>" . ($row["room_id"] == 2 ? $row["id"] - 5 : $row["id"]) . "</td>";
                    echo "<td>" . ($row["accesability"] ? "Dostępny" : "Niedostępny") . "</td>";
                echo "</tr>";
            }

            echo "</table>";
        }

        $connection->close();
    ?>

</body>
</html>