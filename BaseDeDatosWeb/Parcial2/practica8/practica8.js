$(document).ready( function(){
    alert("Funciona Jquery");
        $('#boton').click( function(){
            var nombre = $('#nombre').val();
            alert(nombre);
        });
        $('#texto').click( function(){
            $('#texto').css("display", "inherit").fadeOut(200);

        });
})