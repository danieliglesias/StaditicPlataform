
$(document).ready(function () {
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

    CargarData();
    CargarDataMIXTO();
    CargarDataICONIC();
      CargarDataNORMAL();


    function CargarData() {
        $.ajax({
            url: "controller.asp?action=data",
            dataType: "json"
        })//fin ajax 
       .done(function (data) {
           var markup, table, row;
           if (data.success) {
               //JSON.stringify(jsonlogin[1].Dis_cod)
               //buscamos dentro de el json y lo vamos mostrando por linea y lo insertamos en el div con id example

               markup = '<table class="table table-hover">';
               markup += '  <thead>';
               markup += ' 	<tr>';
               markup += ' 		<th>TOTAL</th>';
               markup += ' 		<th>Fecha</th>';
               markup += ' 		<th>0</th>';
               markup += ' 		<th>1</th>';
               markup += ' 		<th>2</th>';
               markup += ' 		<th>3</th>';
               markup += ' 		<th>4</th>';
               markup += ' 		<th>5</th>';
               markup += ' 		<th>6</th>';
               /*markup += ' 		<th>7</th>';
               markup += ' 		<th>8</th>';
               markup += ' 		<th>9</th>';
               markup += ' 		<th>10</th>';
               markup += ' 		<th>11</th>';
               markup += ' 		<th>12</th>';*/
               markup += ' 		<th>N6</th>';

               markup += ' 	</tr>';
               markup += ' </thead>';
               markup += ' <tbody></tbody>';
               markup += '</table>';
               table = $(markup);

               $.each(data.RECAMBIOBAJAS, function (value, key) {
                   var d = new Date();
                   var n = d.getMonth();
                   var res = key.FECHA.substr(5, 1);
                   var MES0 = key.MES0 != null ? key.MES0 : 0
                   var MES1 = key.MES1 != null ? key.MES1 : 0
                   var MES2 = key.MES2 != null ? key.MES2 : 0
                   var MES3 = key.MES3 != null ? key.MES3 : 0
                   var MES4 = key.MES4 != null ? key.MES4 : 0
                   var MES5 = key.MES5 != null ? key.MES5 : 0
                   var MES6 = key.MES6 != null ? key.MES6 : 0
                   /*var MES7 = key.MES7 != null ? key.MES7 : 0
                   var MES8 = key.MES8 != null ? key.MES8 : 0
                   var MES9 = key.MES9 != null ? key.MES9 : 0
                   var MES10 = key.MES10 != null ? key.MES10 : 0
                   var MES11 = key.MES11 != null ? key.MES11 : 0
                   var MES12 = key.MES12 != null ? key.MES12 : 0*/
                   var n6tot = MES0 + MES1 + MES2 + MES3 + MES4 + MES5 + MES6; //+ MES7 + MES8 + MES9 + MES10 + MES11 + MES12;


                   var N6TOT2 = (n6tot * 100 / key.TOT);
                   var N6 = n6tot > 0 ? N6TOT2.toFixed(1) + "%" : 0 + "%";

                   if (key.FECHA > '201512') {
                       row = $('<tr>')
.append('<td><p>' + key.TOT + '</p></td>')
.append('<td><p>' + key.FECHA + '</p></td>')
.append('<td><p>' + (res < n + 2 ? MES0 : "") + '</p></td>')
.append('<td><p>' + (res < n + 1 ? MES1 : "") + '</p></td>')
.append('<td><p>' + (res < n ? MES2 : "") + '</p></td>')
.append('<td><p>' + (res < n - 1 ? MES3 : "") + '</p></td>')
.append('<td><p>' + (res < n - 2 ? MES4 : "") + '</p></td>')
.append('<td><p>' + (res < n - 3 ? MES5 : "") + '</p></td>')
.append('<td><p>' + (res < n - 4 ? MES6 : "") + '</p></td>')
                       /*.append('<td><p>' + (res < n - 5 ? MES7 : "") + '</p></td>')
                       .append('<td><p>' + (res < n - 6 ? MES8 : "") + '</p></td>')
                       .append('<td><p>' + (res < n - 7 ? MES9 : "") + '</p></td>')
                       .append('<td><p>' + (res < n - 8 ? MES10 : "") + '</p></td>')
                       .append('<td><p>' + (res < n - 9 ? MES11 : "") + '</p></td>')
                       .append('<td><p>' + (res < n - 10 ? MES12 : "") + '</p></td>')*/
.append('<td><p>' + N6 + '</p></td>');

                       table.find('tbody').append(row);

                   }



               }); //fin each function  

               $('#tablarecambio').empty().html(table);
           }
       }); //fin done function
    }





    function CargarDataMIXTO() {
        $.ajax({
            url: "controller.asp?action=mixto",
            dataType: "json"
        })//fin ajax 
       .done(function (data) {
           var markup, table, row;
           if (data.success) {
               //JSON.stringify(jsonlogin[1].Dis_cod)
               //buscamos dentro de el json y lo vamos mostrando por linea y lo insertamos en el div con id example

               markup = '<table class="table table-hover">';
               markup += '  <thead>';
               markup += ' 	<tr>';
               markup += ' 		<th>TOTAL</th>';
               markup += ' 		<th>Fecha</th>';
               markup += ' 		<th>0</th>';
               markup += ' 		<th>1</th>';
               markup += ' 		<th>2</th>';
               markup += ' 		<th>3</th>';
               markup += ' 		<th>4</th>';
               markup += ' 		<th>5</th>';
               markup += ' 		<th>6</th>';
               /*markup += ' 		<th>7</th>';
               markup += ' 		<th>8</th>';
               markup += ' 		<th>9</th>';
               markup += ' 		<th>10</th>';
               markup += ' 		<th>11</th>';
               markup += ' 		<th>12</th>';*/
               markup += ' 		<th>N6</th>';

               markup += ' 	</tr>';
               markup += ' </thead>';
               markup += ' <tbody></tbody>';
               markup += '</table>';
               table = $(markup);

               $.each(data.RECAMBIOMIXTO, function (value, key) {
                   var d = new Date();
                   var n = d.getMonth();
                   var res = key.FECHA.substr(5, 1);
                   var MES0 = key.MES0 != null ? key.MES0 : 0
                   var MES1 = key.MES1 != null ? key.MES1 : 0
                   var MES2 = key.MES2 != null ? key.MES2 : 0
                   var MES3 = key.MES3 != null ? key.MES3 : 0
                   var MES4 = key.MES4 != null ? key.MES4 : 0
                   var MES5 = key.MES5 != null ? key.MES5 : 0
                   var MES6 = key.MES6 != null ? key.MES6 : 0
                   /*var MES7 = key.MES7 != null ? key.MES7 : 0
                   var MES8 = key.MES8 != null ? key.MES8 : 0
                   var MES9 = key.MES9 != null ? key.MES9 : 0
                   var MES10 = key.MES10 != null ? key.MES10 : 0
                   var MES11 = key.MES11 != null ? key.MES11 : 0
                   var MES12 = key.MES12 != null ? key.MES12 : 0*/
                   var n6tot = MES0 + MES1 + MES2 + MES3 + MES4 + MES5 + MES6; //+ MES7 + MES8 + MES9 + MES10 + MES11 + MES12;


                   var N6TOT2 = (n6tot * 100 / key.TOT);
                   var N6 = n6tot > 0 ? N6TOT2.toFixed(1) + "%" : 0 + "%";

                   if (key.FECHA > '201512') {
                       row = $('<tr>')
.append('<td><p>' + key.TOT + '</p></td>')
.append('<td><p>' + key.FECHA + '</p></td>')
.append('<td><p>' + (res < n + 2 ? MES0 : "") + '</p></td>')
.append('<td><p>' + (res < n + 1 ? MES1 : "") + '</p></td>')
.append('<td><p>' + (res < n ? MES2 : "") + '</p></td>')
.append('<td><p>' + (res < n - 1 ? MES3 : "") + '</p></td>')
.append('<td><p>' + (res < n - 2 ? MES4 : "") + '</p></td>')
.append('<td><p>' + (res < n - 3 ? MES5 : "") + '</p></td>')
.append('<td><p>' + (res < n - 4 ? MES6 : "") + '</p></td>')
                       /*.append('<td><p>' + (res < n - 5 ? MES7 : "") + '</p></td>')
                       .append('<td><p>' + (res < n - 6 ? MES8 : "") + '</p></td>')
                       .append('<td><p>' + (res < n - 7 ? MES9 : "") + '</p></td>')
                       .append('<td><p>' + (res < n - 8 ? MES10 : "") + '</p></td>')
                       .append('<td><p>' + (res < n - 9 ? MES11 : "") + '</p></td>')
                       .append('<td><p>' + (res < n - 10 ? MES12 : "") + '</p></td>')*/
.append('<td><p>' + N6 + '</p></td>');

                       table.find('tbody').append(row);

                   }



               }); //fin each function  

               $('#tablamixto').empty().html(table);
           }
       }); //fin done function
    }


    function CargarDataICONIC() {
        $.ajax({
            url: "controller.asp?action=iconic",
            dataType: "json"
        })//fin ajax 
       .done(function (data) {
           var markup, table, row;
           if (data.success) {
               //JSON.stringify(jsonlogin[1].Dis_cod)
               //buscamos dentro de el json y lo vamos mostrando por linea y lo insertamos en el div con id example

               markup = '<table class="table table-hover">';
               markup += '  <thead>';
               markup += ' 	<tr>';
               markup += ' 		<th>TOTAL</th>';
               markup += ' 		<th>Fecha</th>';
               markup += ' 		<th>0</th>';
               markup += ' 		<th>1</th>';
               markup += ' 		<th>2</th>';
               markup += ' 		<th>3</th>';
               markup += ' 		<th>4</th>';
               markup += ' 		<th>5</th>';
               markup += ' 		<th>6</th>';
               /*markup += ' 		<th>7</th>';
               markup += ' 		<th>8</th>';
               markup += ' 		<th>9</th>';
               markup += ' 		<th>10</th>';
               markup += ' 		<th>11</th>';
               markup += ' 		<th>12</th>';*/
               markup += ' 		<th>N6</th>';

               markup += ' 	</tr>';
               markup += ' </thead>';
               markup += ' <tbody></tbody>';
               markup += '</table>';
               table = $(markup);

               $.each(data.RECAMBIOICONIC, function (value, key) {
                   var d = new Date();
                   var n = d.getMonth();
                   var res = key.FECHA.substr(5, 1);
                   var MES0 = key.MES0 != null ? key.MES0 : 0
                   var MES1 = key.MES1 != null ? key.MES1 : 0
                   var MES2 = key.MES2 != null ? key.MES2 : 0
                   var MES3 = key.MES3 != null ? key.MES3 : 0
                   var MES4 = key.MES4 != null ? key.MES4 : 0
                   var MES5 = key.MES5 != null ? key.MES5 : 0
                   var MES6 = key.MES6 != null ? key.MES6 : 0
                   /*var MES7 = key.MES7 != null ? key.MES7 : 0
                   var MES8 = key.MES8 != null ? key.MES8 : 0
                   var MES9 = key.MES9 != null ? key.MES9 : 0
                   var MES10 = key.MES10 != null ? key.MES10 : 0
                   var MES11 = key.MES11 != null ? key.MES11 : 0
                   var MES12 = key.MES12 != null ? key.MES12 : 0*/
                   var n6tot = MES0 + MES1 + MES2 + MES3 + MES4 + MES5 + MES6; //+ MES7 + MES8 + MES9 + MES10 + MES11 + MES12;


                   var N6TOT2 = (n6tot * 100 / key.TOT);
                   var N6 = n6tot > 0 ? N6TOT2.toFixed(1) + "%" : 0 + "%";

                   if (key.FECHA > '201512') {
                       row = $('<tr>')
.append('<td><p>' + key.TOT + '</p></td>')
.append('<td><p>' + key.FECHA + '</p></td>')
.append('<td><p>' + (res < n + 2 ? MES0 : "") + '</p></td>')
.append('<td><p>' + (res < n + 1 ? MES1 : "") + '</p></td>')
.append('<td><p>' + (res < n ? MES2 : "") + '</p></td>')
.append('<td><p>' + (res < n - 1 ? MES3 : "") + '</p></td>')
.append('<td><p>' + (res < n - 2 ? MES4 : "") + '</p></td>')
.append('<td><p>' + (res < n - 3 ? MES5 : "") + '</p></td>')
.append('<td><p>' + (res < n - 4 ? MES6 : "") + '</p></td>')
                       /*.append('<td><p>' + (res < n - 5 ? MES7 : "") + '</p></td>')
                       .append('<td><p>' + (res < n - 6 ? MES8 : "") + '</p></td>')
                       .append('<td><p>' + (res < n - 7 ? MES9 : "") + '</p></td>')
                       .append('<td><p>' + (res < n - 8 ? MES10 : "") + '</p></td>')
                       .append('<td><p>' + (res < n - 9 ? MES11 : "") + '</p></td>')
                       .append('<td><p>' + (res < n - 10 ? MES12 : "") + '</p></td>')*/
.append('<td><p>' + N6 + '</p></td>');

                       table.find('tbody').append(row);

                   }



               }); //fin each function  

               $('#tablaiconic').empty().html(table);
           }
       }); //fin done function
    }


    
    function CargarDataNORMAL() {
        $.ajax({
            url: "controller.asp?action=NORMAL",
            dataType: "json"
        })//fin ajax 
       .done(function (data) {
           var markup, table, row;
           if (data.success) {
               //JSON.stringify(jsonlogin[1].Dis_cod)
               //buscamos dentro de el json y lo vamos mostrando por linea y lo insertamos en el div con id example

               markup = '<table class="table table-hover">';
               markup += '  <thead>';
               markup += ' 	<tr>';
               markup += ' 		<th>TOTAL</th>';
               markup += ' 		<th>Fecha</th>';
               markup += ' 		<th>0</th>';
               markup += ' 		<th>1</th>';
               markup += ' 		<th>2</th>';
               markup += ' 		<th>3</th>';
               markup += ' 		<th>4</th>';
               markup += ' 		<th>5</th>';
               markup += ' 		<th>6</th>';
               /*markup += ' 		<th>7</th>';
               markup += ' 		<th>8</th>';
               markup += ' 		<th>9</th>';
               markup += ' 		<th>10</th>';
               markup += ' 		<th>11</th>';
               markup += ' 		<th>12</th>';*/
               markup += ' 		<th>N6</th>';

               markup += ' 	</tr>';
               markup += ' </thead>';
               markup += ' <tbody></tbody>';
               markup += '</table>';
               table = $(markup);

               $.each(data.RECAMBIONORMAL, function (value, key) {
                   var d = new Date();
                   var n = d.getMonth();
                   var res = key.FECHA.substr(5, 1);
                   var MES0 = key.MES0 != null ? key.MES0 : 0
                   var MES1 = key.MES1 != null ? key.MES1 : 0
                   var MES2 = key.MES2 != null ? key.MES2 : 0
                   var MES3 = key.MES3 != null ? key.MES3 : 0
                   var MES4 = key.MES4 != null ? key.MES4 : 0
                   var MES5 = key.MES5 != null ? key.MES5 : 0
                   var MES6 = key.MES6 != null ? key.MES6 : 0
                   /*var MES7 = key.MES7 != null ? key.MES7 : 0
                   var MES8 = key.MES8 != null ? key.MES8 : 0
                   var MES9 = key.MES9 != null ? key.MES9 : 0
                   var MES10 = key.MES10 != null ? key.MES10 : 0
                   var MES11 = key.MES11 != null ? key.MES11 : 0
                   var MES12 = key.MES12 != null ? key.MES12 : 0*/
                   var n6tot = MES0 + MES1 + MES2 + MES3 + MES4 + MES5 + MES6; //+ MES7 + MES8 + MES9 + MES10 + MES11 + MES12;


                   var N6TOT2 = (n6tot * 100 / key.TOT);
                   var N6 = n6tot > 0 ? N6TOT2.toFixed(1) + "%" : 0 + "%";

                   if (key.FECHA > '201512') {
                       row = $('<tr>')
.append('<td><p>' + key.TOT + '</p></td>')
.append('<td><p>' + key.FECHA + '</p></td>')
.append('<td><p>' + (res < n + 2 ? MES0 : "") + '</p></td>')
.append('<td><p>' + (res < n + 1 ? MES1 : "") + '</p></td>')
.append('<td><p>' + (res < n ? MES2 : "") + '</p></td>')
.append('<td><p>' + (res < n - 1 ? MES3 : "") + '</p></td>')
.append('<td><p>' + (res < n - 2 ? MES4 : "") + '</p></td>')
.append('<td><p>' + (res < n - 3 ? MES5 : "") + '</p></td>')
.append('<td><p>' + (res < n - 4 ? MES6 : "") + '</p></td>')
                       /*.append('<td><p>' + (res < n - 5 ? MES7 : "") + '</p></td>')
                       .append('<td><p>' + (res < n - 6 ? MES8 : "") + '</p></td>')
                       .append('<td><p>' + (res < n - 7 ? MES9 : "") + '</p></td>')
                       .append('<td><p>' + (res < n - 8 ? MES10 : "") + '</p></td>')
                       .append('<td><p>' + (res < n - 9 ? MES11 : "") + '</p></td>')
                       .append('<td><p>' + (res < n - 10 ? MES12 : "") + '</p></td>')*/
.append('<td><p>' + N6 + '</p></td>');

                       table.find('tbody').append(row);

                   }



               }); //fin each function  

               $('#tablanormal').empty().html(table);
           }
       }); //fin done function
    }


});
