$(document).ready(function(){

$('#nvars,#nvars1,#nvars2,#nvars3,#nvars4').click(function() {
 $('li').removeClass();
    $(this).parent().addClass('active');
if ($(this).attr("id") == 'nvars') {
    location.href='http://localhost/riesgoupload';
}
if ($(this).attr("id") == 'nvars1') {
    location.href='http://localhost/riesgoupload/Carpeta1';
}

if ($(this).attr("id") == 'nvars2') {
    location.href='http://localhost/riesgoupload/Carpeta2';
}

if ($(this).attr("id") == 'nvars3') {
    location.href='http://localhost/riesgoupload/Carpeta3';
}

if ($(this).attr("id") == 'nvars4') {
    location.href='http://localhost/riesgoupload/Carpeta4';
}});

});
    
  
