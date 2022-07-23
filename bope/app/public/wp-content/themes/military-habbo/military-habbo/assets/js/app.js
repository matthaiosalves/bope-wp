if(document.querySelector("#departament")) {
  const instrutor = document.querySelector("#instrutor");
  instrutor.addEventListener("click", function() {
    window.open("https://www.google.com", "_blank");
  });

  const parasar = document.querySelector("#parasar");
  parasar.addEventListener("click", function() {
    window.open("https://www.google.com", "_blank");
  });
}

$ ( document ). on ( "keypress" , ".keypressbutton" , function ( event )  { 
                                
  var keyCode =  event . which ||  event . keyCode ; 

  if  ( keyCode ==  13 )  { 

    $ ( "#procurarMilitarR" ). click (); 

    return  false ; 

  } 

});



$(document).ready(function() {



  $("#procurarMilitarR").click(function() {
    document.getElementById("saida").style.display = 'none';
    document.getElementById("saida2").style.display = 'block';
    var usuario  = $("input[name=usuario]").val();
    if (usuario == '') {
      usuario = 'Cmd-Sophia';
    }
    $.ajax({
      "url": "https://bopehabbo.net/modulos/pesquisa_bope.php",
      "dataType": "html",
      type: "POST",
      "data": {
        "usuario" : usuario
      },
      "success": function(response) {
        document.getElementById("saida2").style.display = 'none';
        document.getElementById("saida").style.display = 'block';
        console.log(response);
        $("div#saida").html(response);
      },
      error: function(e) {
        document.getElementById("saida2").style.display = 'none';
        console.log(e.responseText);
      }
    });
  });
});

