$(document).ready(function(){


  $("#loginform").submit(function(e) {
   $.ajax({
url: "../controller.asp?action=LOGIN",
data: "user="+$("#InputEmail1").val()+"&pass="+$("#InputPassword1").val(),
dataType: "json"
})//fin ajax 
.done(function (data) {
    
if (data.success) {
  
    location.href = '../riesgoupload/default.asp';


}else{
    $("#mensaje").html("")
    $("#mensaje").append("<a href='#' class='close' data-dismiss='alert' aria-label='close'>&times;</a><div class='alert alert-danger' style='padding-top: 5px;padding-bottom: 5px;''><strong>Usuario o contraseña incorrectos</strong></div>");
   
}
}).fail(function (data){

    alert("error al login")
})
    e.preventDefault(); // avoid to execute the actual submit of the form.
});
   $(".modals").click(function(){ // Click to only happen on announce links
     var ides = $(this).data('id');
       $(".modal-body #carpetaname").val(ides);
       $(".modal-body #carpetaname2").val(ides);

   });

$(".myModal1").click(function(){
  $('#myModal1').modal('show');
});
$(".myModal2").click(function(){
  $('#myModal2').modal('show');
});
$(".myModal3").click(function(){
  $('#myModal3').modal('show');
});
$(".myModal4").click(function(){
  $('#myModal4').modal('show');
});
$(".myModal5").click(function(){
  $('#myModal5').modal('show');
});


$(".list-group-item").click(function(){

$('#myModal1').modal('hide');
$('#myModal2').modal('hide');
$('#myModal3').modal('hide');
$('#myModal4').modal('hide');
$('#myModal5').modal('hide');



$('#myModal1,#myModal2,#myModal3,#myModal4,#myModal5').on('hidden', function () {
 $('#myModalDescarga').modal('show');
})

var size = $(this).data('size');
     var date = $(this).data('date');
     var name = $(this).data('name');
     var folder = $(this).data('folder');
     $(".modal-body #dates").text( date );
         $(".modal-body #sizes").text(size+" mb" );
         $(".modal-body #nom").text(name);

      if (folder == 1){  
        $( "#descarga" ).attr( 'href', 'http://localhost/descargas/Download/Bases Morosidad y Bajas/'+ name ); 
         }else if (folder == 2) {
          $( "#descarga" ).attr( 'href', 'http://localhost/descargas/Download/Campañas/'+ name ); 
          }else if (folder == 3) {
            $( "#descarga" ).attr( 'href', 'http://localhost/descargas/Download/Comites/'+ name ); 
          }else if (folder == 4){
              $( "#descarga" ).attr( 'href', 'http://localhost/descargas/Download/Otros/'+ name ); 
          }else if (folder == 5) {
                   $( "#descarga" ).attr( 'href', 'http://localhost/descargas/Download/Reportes/'+ name ); 
          }

              
     // As pointed out in comments, 
     // it is superfluous to have to manually call the modal.
     // $('#addBookDialog').modal('show');


})


$('#nvars,#nvars2,#nvars3,#nvars4').click(function() {
    $('li').removeClass();
    $(this).parent().addClass('active');
    if ($(this).attr("id") == 'nvars') {
    location.href='http://localhost/';
                                        }
if ($(this).attr("id") == 'nvars2') {
    location.href='http://localhost/panelriesgo';
}

if ($(this).attr("id") == 'nvars3') {
    location.href='http://localhost/reporterecambio';
}

if ($(this).attr("id") == 'nvars4') {
    location.href='http://localhost/descargas';
}
});


   });// fin document ready 
  
