$(document).ready(function()
{
    
    
    
});
function listar()
{
    
  $.ajax({
      url: "buscar.jsp",
      data: $("#frm1").serialize(),
      type: "get",
      beforeSend: function(){
          
          $("#mensaje").html("espere un momento");
  
      },
      success: function(dat){
          
          
          $("#mensaje").html("");
          $("#lista2").html(dat);
      }
      
  });
  
}

