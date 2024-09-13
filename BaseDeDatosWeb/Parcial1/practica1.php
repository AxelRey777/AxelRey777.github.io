<?php

    $nombre = $_GET["nombre"];
    $genero =$_GET["genero"];
    $edad = $_GET["edad"];
    $escuela = $_GET["escuela"];
    $comida = $_GET["comida"];
    $sangre = $_GET["sangre"];
    $rhsangre = $_GET["rhsangre"];


    //obtienen los valores

    if($edad > 18){
        echo "<h1>".$nombre." es mayor de edad</h1>";
    } else {
        echo "<h1>".$nombre." NO es mayor de edad</h1>";
    }
    
    echo "<h1>Nombre del Alumno: ".$nombre."</h1>";

    echo "<h2>genero:" .$genero."</h2>";

    echo "<h2>Edad: ".$edad."</h2>";

    echo "<h2>Escuela: ".$escuela."</h2>";

    echo "<h2>comida: ".$comida."</h2>";

    echo "<h2>sangre: ".$sangre."</h2>";

    echo "<h2>rhsangre: ".$rhsangre."</h2>";

    //Imprimir el valor de esos campos

?>