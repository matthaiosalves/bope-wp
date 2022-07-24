if(document.querySelector("#departament")) {
  const monitores = document.querySelector("#monitores");
  monitores.addEventListener("click", function() {
    window.open("/monitores", "_blank");
  });

  const helpers = document.querySelector("#helpers");
  helpers.addEventListener("click", function() {
    window.open("/helpers", "_blank");
  });

  const supervisores = document.querySelector("#supervisores");
  supervisores.addEventListener("click", function() {
    window.open("/supervisores", "_blank");
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

