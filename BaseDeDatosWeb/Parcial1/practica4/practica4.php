<?php

    $aciertos = 0;  
    $nombre = $_POST["nombre"];
    $pregunta1 = $_POST["pregunta1"];
    $pregunta2 = $_POST["pregunta2"];
    $pregunta3 = $_POST["pregunta3"];
    $pregunta4 = $_POST["pregunta4"];
    $pregunta5 = $_POST["pregunta5"];
    $pregunta6 = $_POST["pregunta6"];
    $pregunta7 = $_POST["pregunta7"];
    $pregunta8 = $_POST["pregunta8"];
    $pregunta9 = $_POST["pregunta9"];
    $pregunta10 = $_POST["pregunta10"];
   

    //valida pregunta 1 1. ¿Cual de estos es un instumento musical de cuerdas?
    echo "<h3>1. ¿Cual de estos es un instumento musical de cuerdas?</h3>";
    echo "<h5>Repuesta seleccionada ".$pregunta1." ---- Correcta = GUITARRA</h5>";
    if($pregunta1 == "GUITARRA"){
        $aciertos++;
        echo "<img src='correcta.png' width='50px'><hr>";
    } else {
        echo "<img src='incorrecta.png' width='50px'><hr>";
    }
    //------FIN de la pregunta 1 ------------------

    //Valido pregunta 2. _____________ Fue un compositor de musica clasica el cual estaba sordo.
    echo "<h3>2. _____________ Fue un compositor de musica clasica el cual estaba sordo.</h3>";
    echo "<h5>Repuesta seleccionada ".$pregunta2." ---- Correcta = Beethoven</h5>";
    if(strtoupper($pregunta2) == "BEETHOVEN"){
        $aciertos++;
        echo "<img src='correcta.png' width='50px'><hr>";
    } else {
        echo "<img src='incorrecta.png' width='50px'><hr>";
    }
    //Fin de la pregunta 2 -----------------------------

    //Pregunta 3 - se deben validar 2 opciones Sonata y sinfonia
    echo "<h3>3. ¿Son lenguajes utilizados para la gestión de base de datos? (Selecciona 2)</h3>";
    echo "<h5>Repuesta seleccionada ".implode(",", $pregunta3)." ---- Correcta = Sonata, Sinfonia</h5>";
    $p3_respuestas_correctas = 0;

    if(count($pregunta3) == 2){
        for($i=0; $i<count($pregunta3); $i++){
            if($pregunta3[$i] == "sinfonia" || $pregunta3[$i] == "sonata"){
                $p3_respuestas_correctas ++;
            }
        }
        if($p3_respuestas_correctas == 2){
            $aciertos++;
            echo "<img src='correcta.png' width='50px'><hr>";
        } else {
            echo "<img src='incorrecta.png' width='50px'><hr>";
        }
    } else {
        echo "<img src='incorrecta.png' width='50px'><hr>";
    }
    //----------FIN pregunta 3 ------------------------------------

    //valida pregunta 4. ¿En qué periodo de la historia de la música compuso Johann Sebastian Bach?

    echo "<h3>4. ¿En qué periodo de la historia de la música compuso Johann Sebastian Bach?</h3>";
    echo "<h5>Repuesta seleccionada ".$pregunta4." ---- Correcta = BARROCO</h5>";
    if($pregunta4 == "Barroco"){
        $aciertos++;
        echo "<img src='correcta.png' width='50px'><hr>";
    } else {
        echo "<img src='incorrecta.png' width='50px'><hr>";
    }
    //------FIN de la pregunta 4 ------------------

    //Valido pregunta 5. Cual es la nota musical de este audio?. 
        echo "<h3>5. Cual es la nota musical de este audio?.</h3>";
        echo "<h5>Repuesta seleccionada ".$pregunta5." ---- Correcta = DO</h5>";
        if(strtoupper($pregunta5) == "DO"){
            $aciertos++;
            echo "<img src='correcta.png' width='50px'><hr>";
        } else {
            echo "<img src='incorrecta.png' width='50px'><hr>";
        }
         //------FIN de la pregunta 5 ------------------

         //------INICIO de la pregunta 6 ------------------
         echo "<h3>6. ¿Cuál es el nombre del sistema que clasifica las voces humanas en soprano, contralto, tenor y bajo?</h3>";
         echo "<h5>Repuesta seleccionada ".$pregunta6." ---- Correcta = TESITURA</h5>";
         if($pregunta6 == "TESITURA"){
        $aciertos++;
        echo "<img src='correcta.png' width='50px'><hr>";
         } else {
         echo "<img src='incorrecta.png' width='50px'><hr>";
         }
        //------FIN de la pregunta 6 ------------------

         //------INICIO de la pregunta 7 ------------------
         echo "<h3>7. Mozart fue el compositor mas importante del _________</h3>";
         echo "<h5>Repuesta seleccionada ".$pregunta7." ---- Correcta = Clasicismo</h5>";
         if(strtoupper($pregunta7) == "CLASICISMO"){
             $aciertos++;
             echo "<img src='correcta.png' width='50px'><hr>";
         } else {
             echo "<img src='incorrecta.png' width='50px'><hr>";
         }
        //------FIN de la pregunta 7 ------------------

        //------INICIO de la pregunta 8 ------------------
    echo "<h3>8. ¿Cual de los siguientes instrumentos se usan en el jazz? (Selecciona 2)</h3>";
     echo "<h5>Repuesta seleccionada ".implode(",", $pregunta8)." ---- Correcta = Saxofon, Contrabajo</h5>";
      $p8_respuestas_correctas = 0;

         if(count($pregunta8) == 2){
         for($i=0; $i<count($pregunta8); $i++){
            if($pregunta8[$i] == "Saxofon" || $pregunta8[$i] == "Contrabajo"){
                $p8_respuestas_correctas ++;
               }
           }
          if($p8_respuestas_correctas == 2){
             $aciertos++;
               echo "<img src='correcta.png' width='50px'><hr>";
             } else {
            echo "<img src='incorrecta.png' width='50px'><hr>";
             }
             } else {
               echo "<img src='incorrecta.png' width='50px'><hr>";
            }
        //------FIN de la pregunta 8 ------------------

        //------INICIO de la pregunta 9 ------------------
        echo "<h3>9. ¿Que significa el tempo en la musica?</h3>";
        echo "<h5>Repuesta seleccionada ".$pregunta9." ---- Correcta = Es la velocidad de la musica</h5>";
        if($pregunta9 == "Velocidad"){
            $aciertos++;
            echo "<img src='correcta.png' width='50px'><hr>";
        } else {
            echo "<img src='incorrecta.png' width='50px'><hr>";
        }
        //------FIN de la pregunta 9 ------------------

        //------INICIO de la pregunta 10 ------------------
        echo "<h3>10. Cual es la nota musical de este audio?.</h3>";
        echo "<h5>Repuesta seleccionada ".$pregunta10." ---- Correcta = SOL</h5>";
        if(strtoupper($pregunta10) == "SOL"){
            $aciertos++;
            echo "<img src='correcta.png' width='50px'><hr>";
        } else {
            echo "<img src='incorrecta.png' width='50px'><hr>";
        }
        //------FIN de la pregunta 10 ------------------


    //proceso de ACI$aciertos cambia la carita segun tu ACI$aciertos !!!!
    if ($aciertos == 10) {
        echo '<img src="imagen10.png" alt="Carita feliz 100%" />';
    } elseif ($aciertos >= 8) {
        echo "<img src='imagen8.png' width='100px'><hr>";
    } elseif ($aciertos >= 6) {
        echo "<img src='imagen6.png' width='100px'><hr>";
    } else {
        echo "<img src='Reprobado.jpg' width='100px'><hr>";
    }

    echo "<h1>Nombre del Alumno: ".$nombre."</h1>";
    echo "CALIFICACIÓN FINAl = " . ($aciertos * 10) . "%";
    
?>