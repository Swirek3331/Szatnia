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
        $boxID = $box;

        $sql = "";
        $result = $connection->query($sql);


        $connection->close();
    ?>

</body>
</html>