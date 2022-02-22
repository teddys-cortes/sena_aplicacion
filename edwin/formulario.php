


<?php



$nombre = $_POST['nombre'];
$apellido = $_REQUEST['apellido1'];
$apellido2 = $_REQUEST['apellido2'];
$correo = $_REQUEST['aorreo'];
$asunto = $_REQUEST['asunto'];
$comentario = $_REQUEST['comentario'];
 


$conn = new mysqli("localhost", "id18464138_root", "=3jro|}0nIWw!Bbt", "id18464138_formulario");

$sql = "SELECT Nombre_us FROM Usuario WHERE('$nombre')";
$result = mysqli_query($conn, $sql);
$row = mysqli_fetch_row($result);

if(empty($row[0])){
    
    echo $apellido;
    $sql = "INSERT INTO Usuario (Nombre_us, Apellido1_us, Apellido2_us, Correo_us) VALUES ('$nombre','$apellido','$apellido2','$correo',)";

    $sql2 = "SELECT Nombre_us FROM Usuario WHERE('$nombre')";
    if(empty(($conn->query(($sql2))))){
            echo "no se pudo crear";
    }else{
        echo $nombre;
        $sql2 = "INSERT INTO Comentario (Nombre2_co, Asunto_co, Comentario_co) VALUES ('$nombre','$asunto','$comentario',)";
    }

}else{
    $sql = "INSERT INTO Comentario (Nombre2_co, Asunto_co, Comentario_co) VALUES ('$nombre','$asunto','$comentario',)";
}
?>


