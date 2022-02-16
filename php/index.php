    <?php
    $mysqli = new mysqli('localhost', 'root', '', 'sena');
    $myArray = array();
    if ($result = $mysqli->query("SELECT * FROM areas")) {

        while ($row = $result->fetch_array(MYSQLI_ASSOC)) {
            $myArray[] = $row;
        }
        echo json_encode($myArray);
    }
    ?>
