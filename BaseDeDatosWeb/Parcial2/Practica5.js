console.log("FUNCIONA JS")
    var cambio = false;

function CambiaColor() {
    document.getElementById("cuadro").style.backgroundColor = 'red';
    if (cambio) {
        document.getElementById("cuadro").style.backgroundColor = 'white';
        cambio = false;
    }else{
        document.getElementById("cuadro").style.backgroundColor = 'red';
        cambio = true;
        
    }
}


function ocultar() {
    document.getElementById("titulo").style.display = 'none';
    
    
}
function mostrar() {
    document.getElementById("titulo").style.display = ' ';
}


