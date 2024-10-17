  $(document).ready ( function(){
    let cartas =new Array(54).fill(false);
        //funcion para dar la carta :o
        var cont = 0;
        $("#dar_carta").click(function(){
            var b = true;
            
            while(b){
            var num = Math.floor(Math.random()*54)+1;
                    console.log("numero de cartas"+num);
                if(cartas[num-1] == true){
                continue;
                }else{
                    $("#carta_activa").html("<img src=loteria/"+num+".jpg>");
                    cartas[num-1] = true;
                    b=false;
                    cont++;
                }
                if(cont == 54){
                    console.log("ya se dieron todas las cartas");
                    b=false;
                }
            }
       
    });

  });