var ocultar = false;

function muestra_texto(params) {
   
    
    if(!ocultar){
    document.getElementById("texto").innerHTML = "lorem ipsum";
    ocultar=true;
    document.getElementById("mostrar").innerHTML = "Mostrar menos";
    }else{
        document.getElementById("texto").innerHTML = "";
        ocultar=false;
        document.getElementById("mostrar").innerHTML = "Mostrar mas";
    }
}

function lanzar_dado(){
    var numero = Math.floor(Math.random()* 6) + 1;
    document.getElementById("imagen_dado").innerHTML = "<img src='dado" + numero + ".png' width='100px'>";
}