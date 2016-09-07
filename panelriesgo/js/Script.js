

function onReady(callback) {
    var intervalID = window.setInterval(checkReady, 1000);

    function checkReady() {
        if (document.getElementsByTagName('body')[0] !== undefined) {
            window.clearInterval(intervalID);
            callback.call(this);
        }
    }
}

function show(id, value) {
    document.getElementById(id).style.display = value ? 'block' : 'none';
}

onReady(function () {
    show('page', true);
    show('loading', false);
});


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


  
    Tabla_Movil();//cargamos por primera vez datos
    
            cargargrafico();//cargamos el grafico    
            
                //Mostramos lista de registros por fecha de la tabla dt_informe_riesgo_mega
  $("#monitor").on("click", function(){
    Dtper();
    DtInformeRiesgoMega();
}); 
  $("#fijo").on("click", function(){
    Tabla_Fijo();
    cargargrafico2();
    
});          
                
    $(".nav li").on("click", function () {
        $(".nav li").removeClass("active");
        $(this).addClass("active");
    });
    $('#myTab a').click(function (e) {
        e.preventDefault()
        $(this).tab('show')
    })

    $("#zona").bind("change", function () {// cada vez que cambiamos las opciones del select del modal        
        $.ajax({
            url: "controller.asp?action=filtrozona",
            dataType: "json",
            data: "zona=" + $('#zona').children(":selected").val()
        })//fin ajax 
.done(function (data) {
    if (data.success) {

        markup = '<table class="table table-striped table-hover">';
        markup += '  <thead>';
        markup += ' 	<tr>';
        markup += ' 		<th>REGION</th>';
        markup += ' 		<th>SEGMENTO</th>';
        markup += ' 		<th>TIPO ALTA</th>';
        markup += ' 		<th>VENTA</th>';
        markup += ' 		<th>AGR. CANAL</th>';
        markup += ' 		<th>ALTAS</th>';
        markup += ' 		<th>N3</th>';
        markup += ' 	</tr>';
        markup += ' </thead>';
        markup += ' <tbody></tbody>';
        markup += '</table>';
        table = $(markup);
         var rg=87
               var rg2=111
        $.each(data.ZONA, function (value, key) {
           
            row = $('<tr style="background-color:rgba('+rg+',199, '+rg2+', 1);">')
                .append('<td><p>' + (key.REGION == "13" ? "XIII" : key.REGION == "1" ? "I" : key.REGION == "2" ? "II" : key.REGION == "3" ? "III" : key.REGION == "4" ? "IV" : key.REGION == "5" ? "V" : key.REGION == "6" ? "VI" : key.REGION == "7" ? "VII" : key.REGION == "8" ? "VIII" : key.REGION == "9" ? "IX" : key.REGION == "10" ? "X" : key.REGION == "11" ? "XI" : key.REGION == "12" ? "XII" : key.REGION == "14" ? "XIV" : key.REGION == "15" ? "XV" : "") + '</p></td>')
                .append('<td><p>' + key.SEGMENTO + '</p></td>')
                .append('<td><p>' + key.TIPO_ALTA + '</p></td>')
                .append('<td><p>' + key.VENTA_EQUIPO + '</p></td>')
                .append('<td>' + key.ARGCANAL + '</td>')
                 .append('<td><p>' + key.ALTAS + '</p></td>')
                  .append('<td><p>' + key.N3 + '%</p></td>');
                rg= rg+5
                  rg2= rg+5
            table.find('tbody').append(row);
             $('#tabla_movil').empty().html(table);

        }); //fin each function
        
             markup = '<table class="table table-striped table-hover">';
        markup += '  <thead>';
        markup += ' 	<tr>';
        markup += ' 		<th>REGION</th>';
        markup += ' 		<th>SEGMENTO</th>';
        markup += ' 		<th>TIPO ALTA</th>';
        markup += ' 		<th>VENTA</th>';
        markup += ' 		<th>AGR. CANAL</th>';
        markup += ' 		<th>ALTAS</th>';
        markup += ' 		<th>N3</th>';
        markup += ' 	</tr>';
        markup += ' </thead>';
        markup += ' <tbody></tbody>';
        markup += '</table>';
        table = $(markup);
          var rg22=130
               var rg222=158
        $.each(data.ZONA2, function (value, key) {
           
            row = $('<tr style="background-color:rgba(255,'+rg222+', '+rg22+', 1);">')
                .append('<td><p>' + (key.REGION == "13" ? "XIII" : key.REGION == "1" ? "I" : key.REGION == "2" ? "II" : key.REGION == "3" ? "III" : key.REGION == "4" ? "IV" : key.REGION == "5" ? "V" : key.REGION == "6" ? "VI" : key.REGION == "7" ? "VII" : key.REGION == "8" ? "VIII" : key.REGION == "9" ? "IX" : key.REGION == "10" ? "X" : key.REGION == "11" ? "XI" : key.REGION == "12" ? "XII" : key.REGION == "14" ? "XIV" : key.REGION == "15" ? "XV" : "") + '</p></td>')
                .append('<td><p>' + key.SEGMENTO + '</p></td>')
                .append('<td><p>' + key.TIPO_ALTA + '</p></td>')
                .append('<td><p>' + key.VENTA_EQUIPO + '</p></td>')
                .append('<td>' + key.ARGCANAL + '</td>')
                 .append('<td><p>' + key.ALTAS + '</p></td>')
                  .append('<td><p>' + key.N3 + '%</p></td>');
                   rg22=rg22+5
                rg222=rg222+5
            table.find('tbody').append(row);


        }); //fin each function  
          
        $('#tabla_movil2').empty().html(table);
        var zona = $('#zona').children(":selected").val();
       cargargrafico(zona)
    }
}); //fin done function
    }); //fin bind





    function Tabla_Movil() {
        $.ajax({
            url: "controller.asp?action=cargarMovilN3",
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
               markup += ' 		<th>REGION</th>';
               markup += ' 		<th>SEGMENTO</th>';
               markup += ' 		<th>TIPO ALTA</th>';
               markup += ' 		<th>VENTA</th>';
               markup += ' 		<th>AGR. CANAL</th>';
               markup += ' 		<th>ALTAS</th>';
               markup += ' 		<th>N3</th>';
               markup += ' 	</tr>';
               markup += ' </thead>';
               markup += ' <tbody></tbody>';
               markup += '</table>';
               table = $(markup);
               var rg=87
               var rg2=111
               $.each(data.MOVILN3, function (value, key) {

                   row = $('<tr style="background-color:rgba('+rg+',199, '+rg2+', 1);" >')
                .append('<td><p>' + (key.REGION == "13" ? "XIII" : key.REGION == "1" ? "I" : key.REGION == "2" ? "II" : key.REGION == "3" ? "III" : key.REGION == "4" ? "IV" : key.REGION == "5" ? "V" : key.REGION == "6" ? "VI" : key.REGION == "7" ? "VII" : key.REGION == "8" ? "VIII" : key.REGION == "9" ? "IX" : key.REGION == "10" ? "X" : key.REGION == "11" ? "XI" : key.REGION == "12" ? "XII" : key.REGION == "14" ? "XIV" : key.REGION == "15" ? "XV" : "") + '</p></td>')
                .append('<td><p>' + key.SEGMENTO + '</p></td>')
                .append('<td><p>' + key.TIPO_ALTA + '</p></td>')
                .append('<td><p>' + key.VENTA_EQUIPO + '</p></td>')
                .append('<td>' + key.ARGCANAL + '</td>')
                 .append('<td><p>' + key.ALTAS + '</p></td>')
                  .append('<td><p>' + key.N3 + '%</p></td>');
                  rg= rg+5
                  rg2= rg+5
                   table.find('tbody').append(row);


               }); //fin each function  
               $('#tabla_movil').empty().html(table);
               
                   markup = '<table class="table table-hover">';
               markup += '  <thead>';
               markup += ' 	<tr>';
               markup += ' 		<th>REGION</th>';
               markup += ' 		<th>SEGMENTO</th>';
               markup += ' 		<th>TIPO ALTA</th>';
               markup += ' 		<th>VENTA</th>';
               markup += ' 		<th>AGR. CANAL</th>';
               markup += ' 		<th>ALTAS</th>';
               markup += ' 		<th>N3</th>';
               markup += ' 	</tr>';
               markup += ' </thead>';
               markup += ' <tbody></tbody>';
               markup += '</table>';
               table = $(markup);
                var rg22=130
               var rg222=158
               $.each(data.MOVILN32, function (value, key) {

                   row = $('<tr style="background-color:rgba(255,'+rg222+', '+rg22+', 1);" >')
                .append('<td><p>' + (key.REGION == "13" ? "XIII" : key.REGION == "1" ? "I" : key.REGION == "2" ? "II" : key.REGION == "3" ? "III" : key.REGION == "4" ? "IV" : key.REGION == "5" ? "V" : key.REGION == "6" ? "VI" : key.REGION == "7" ? "VII" : key.REGION == "8" ? "VIII" : key.REGION == "9" ? "IX" : key.REGION == "10" ? "X" : key.REGION == "11" ? "XI" : key.REGION == "12" ? "XII" : key.REGION == "14" ? "XIV" : key.REGION == "15" ? "XV" : "") + '</p></td>')
                .append('<td><p>' + key.SEGMENTO + '</p></td>')
                .append('<td><p>' + key.TIPO_ALTA + '</p></td>')
                .append('<td><p>' + key.VENTA_EQUIPO + '</p></td>')
                .append('<td>' + key.ARGCANAL + '</td>')
                 .append('<td><p>' + key.ALTAS + '</p></td>')
                  .append('<td><p>' + key.N3 + '%</p></td>');
                rg22=rg22+5
                rg222=rg222+5
                   table.find('tbody').append(row);


               }); //fin each function  
               $('#tabla_movil2').empty().html(table);
                    
           }
       }); //fin done function
    }



 $("#zona2").bind("change", function () {// cada vez que cambiamos las opciones del select del modal        
        $.ajax({
            url: "controller.asp?action=filtrozonafijo",
            dataType: "json",
            data: "zona2=" + $('#zona2').children(":selected").val()
        })//fin ajax 
.done(function (data) {
    if (data.success) {
 

        markup = '<table class="table table-striped table-hover">';
        markup += '  <thead>';
        markup += ' 	<tr>';
        markup += ' 		<th>REGION</th>';
        markup += ' 		<th>SEGMENTO</th>';
        markup += ' 		<th>TIPO CLIENTE</th>';
        markup += ' 		<th>TENDENCIA</th>';
        markup += ' 		<th>CANAL</th>';
        markup += ' 		<th>ALTAS</th>';
        markup += ' 		<th>N3</th>';
        markup += ' 	</tr>';
        markup += ' </thead>';
        markup += ' <tbody></tbody>';
        markup += '</table>';
        table = $(markup);
         var rg=87
               var rg2=111
        $.each(data.ZONAFIJA2, function (value, key) {
           
            row = $('<tr style="background-color:rgba('+rg+',199, '+rg2+', 1);">')
                .append('<td><p>' + key.REGION + '</p></td>')
                .append('<td><p>' + key.SEGMENTO + '</p></td>')
                .append('<td><p>' + key.TIPO_CLIENTE + '</p></td>')
                .append('<td><p>' + key.TENDENCIA + '</p></td>')
                .append('<td>' + key.CANAL + '</td>')
                 .append('<td><p>' + key.ALTAS + '</p></td>')
                  .append('<td><p>' + key.N3 + '%</p></td>');
                rg= rg+5
                  rg2= rg+5
            table.find('tbody').append(row);
             $('#tabla_fija').empty().html(table);

        }); //fin each function
        
             markup = '<table class="table table-striped table-hover">';
        markup += '  <thead>';
        markup += ' 	<tr>';
        markup += ' 		<th>REGION</th>';
        markup += ' 		<th>SEGMENTO</th>';
        markup += ' 		<th>TIPO CLIENTE</th>';
        markup += ' 		<th>TENDENCIA</th>';
        markup += ' 		<th>CANAL</th>';
        markup += ' 		<th>ALTAS</th>';
        markup += ' 		<th>N3</th>';
        markup += ' 	</tr>';
        markup += ' </thead>';
        markup += ' <tbody></tbody>';
        markup += '</table>';
        table = $(markup);
          var rg22=130
               var rg222=158
        $.each(data.ZONAFIJA, function (value, key) {
           
            row = $('<tr style="background-color:rgba(255,'+rg222+', '+rg22+', 1);">')
                .append('<td><p>' + key.REGION + '</p></td>')
                .append('<td><p>' + key.SEGMENTO + '</p></td>')
                .append('<td><p>' + key.TIPO_CLIENTE + '</p></td>')
                .append('<td><p>' + key.TENDENCIA + '</p></td>')
                .append('<td>' + key.CANAL + '</td>')
                 .append('<td><p>' + key.ALTAS + '</p></td>')
                  .append('<td><p>' + key.N3 + '%</p></td>');
                   rg22=rg22+5
                rg222=rg222+5
            table.find('tbody').append(row);


        }); //fin each function  
          
        $('#tabla_fija2').empty().html(table);
        var zona2 = $('#zona2').children(":selected").val();
       cargargrafico2(zona2)
    }
}); //fin done function
    }); //fin bind






 function Tabla_Fijo() {
        $.ajax({
            url: "controller.asp?action=cargarFijaN3",
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
               markup += ' 		<th>REGION</th>';
               markup += ' 		<th>SEGMENTO</th>';
               markup += ' 		<th>CLIENTE</th>';
               markup += ' 		<th>TENENCIA</th>';
               markup += ' 		<th>CANAL</th>';
               markup += ' 		<th>ALTAS</th>';
               markup += ' 		<th>N3</th>';
               markup += ' 	</tr>';
               markup += ' </thead>';
               markup += ' <tbody></tbody>';
               markup += '</table>';
               table = $(markup);
               var rg=87
               var rg2=111
               $.each(data.FIJON3, function (value, key) {

                   row = $('<tr style="background-color:rgba('+rg+',199, '+rg2+', 1);" >')
                            .append('<td><p>' + key.REGION +'</p></td>')
                            .append('<td><p>' + key.SEGMENTO + '</p></td>')
                .append('<td><p>' + key.TIPO_CLIENTE + '</p></td>')
                .append('<td><p>' + key.TENENCIA_FINAL + '</p></td>')
                .append('<td>' + key.CANAL + '</td>')
                 .append('<td><p>' + key.ALTAS + '</p></td>')
                  .append('<td><p>' + key.N3 + '%</p></td>');
                  rg= rg+5
                  rg2= rg+5
                   table.find('tbody').append(row);


               }); //fin each function  
               $('#tabla_fija').empty().html(table);
               
                    markup = '<table class="table table-hover">';
               markup += '  <thead>';
               markup += ' 	<tr>';
               markup += ' 		<th>REGION</th>';
               markup += ' 		<th>SEGMENTO</th>';
               markup += ' 		<th>CLIENTE</th>';
               markup += ' 		<th>TENENCIA</th>';
               markup += ' 		<th>CANAL</th>';
               markup += ' 		<th>ALTAS</th>';
               markup += ' 		<th>N3</th>';
               markup += ' 	</tr>';
               markup += ' </thead>';
               markup += ' <tbody></tbody>';
               markup += '</table>';
               table = $(markup);
                var rg22=130
               var rg222=158
               $.each(data.FIJON32, function (value, key) {

                   row = $('<tr style="background-color:rgba(255,'+rg222+', '+rg22+', 1);" >')
                .append('<td><p>' + key.REGION +'</p></td>')
                .append('<td><p>' + key.SEGMENTO + '</p></td>')
                .append('<td><p>' + key.TIPO_CLIENTE + '</p></td>')
                .append('<td><p>' + key.TENENCIA_FINAL + '</p></td>')
                .append('<td>' + key.CANAL + '</td>')
                 .append('<td><p>' + key.ALTAS + '</p></td>')
                  .append('<td><p>' + key.N3 + '%</p></td>');
                rg22=rg22+5
                rg222=rg222+5
                   table.find('tbody').append(row);


               }); //fin each function  
               $('#tabla_fija2').empty().html(table);      
           }
       }); //fin done function
    }

function Dtper(){
    
     $.ajax({
            url: "controller.asp?action=dtper",
            dataType: "json"
        })//fin ajax 
       .done(function (data) {
           var markup, table, row;
           if (data.success) {
               
               
                  markup = '<table class="table table-striped table-hover">';
               markup += '  <thead>';
               markup += ' 	<tr>';
               markup += ' 		<th>FECHA</th>';
               markup += ' 		<th>REGISTROS</th>';
               markup += ' 	</tr>';
               markup += ' </thead>';
               markup += ' <tbody></tbody>';
               markup += '</table>';
               table = $(markup);
          
               $.each(data.DTPER, function (value, key) {

                   row = $('<tr>')
                .append('<td><p>' + key.FECHA + '</p></td>')
                  .append('<td><p>' + key.REGISTROS + '</p></td>');
                   table.find('tbody').append(row);


               }); //fin each function  
               $('#DTPER').empty().html(table);
                                           
              }
               })



}




function DtInformeRiesgoMega(){
    

    $.ajax({
            url: "controller.asp?action=dtinformeriesgomega",
            dataType: "json"
        })//fin ajax 
       .done(function (data) {
           var markup, table, row;
           if (data.success) {
               
               
                  markup = '<table class="table table-striped table-hover">';
               markup += '  <thead>';
               markup += ' 	<tr>';
               markup += ' 		<th>FECHA</th>';
               markup += ' 		<th>REGISTROS</th>';
               markup += ' 	</tr>';
               markup += ' </thead>';
               markup += ' <tbody></tbody>';
               markup += '</table>';
               table = $(markup);
          
               $.each(data.MEGA, function (value, key) {

                   row = $('<tr>')
                .append('<td><p>' + key.FECHA + '</p></td>')
                  .append('<td><p>' + key.REGISTROS + '</p></td>');
                   table.find('tbody').append(row);


               }); //fin each function  
               $('#MEGAS').empty().html(table);
                                           
              }
               })
}


















//GRAFICO---------GRAFICO-----------GRAFICO----------GRAFICO-----------GRAFICO----------GRAFICO-----------GRAFICO
//GRAFICO---------GRAFICO-----------GRAFICO----------GRAFICO-----------GRAFICO----------GRAFICO-----------GRAFICO
//GRAFICO---------GRAFICO-----------GRAFICO----------GRAFICO-----------GRAFICO----------GRAFICO-----------GRAFICO
//GRAFICO---------GRAFICO-----------GRAFICO----------GRAFICO-----------GRAFICO----------GRAFICO-----------GRAFICO
//GRAFICO---------GRAFICO-----------GRAFICO----------GRAFICO-----------GRAFICO----------GRAFICO-----------GRAFICO
//GRAFICO---------GRAFICO-----------GRAFICO----------GRAFICO-----------GRAFICO----------GRAFICO-----------GRAFICO
function cargargrafico2(zona2){
     $.ajax({
            url: "controller.asp?action=cargarGrafico2",
            dataType: "json"
        })//fin ajax 
       .done(function (data) {
           
     if (data.success) {

         $.each(data.REGIONTOTALFIJO, function (value, key) {
             
             if(value === 0 && (zona2 == null || zona2 == 'T')){
                   total2(key.uno,key.dos,key.tres,key.cuatro,key.cinco,key.trece,key.seis,key.siete,key.ocho,key.nueve,key.diez,key.once,key.doce,key.quince)  
             }else if (value === 0 && (zona2 == 'C' )){
                 centro2(key.trece)
             }else if (value === 0 && (zona2 == 'N' )){
                 norte2(key.uno,key.dos,key.tres,key.cuatro,key.cinco)
             }else if (value === 0 && (zona2 == 'S' )){
                 sur2(key.seis,key.siete,key.ocho,key.nueve,key.diez,key.once,key.doce,key.quince)
             }
             
                    });
         }
        
            
 }).fail(function (data) {
      
     alert("FAIL!")

     })   
}



function cargargrafico(zona){
    
     $.ajax({
            url: "controller.asp?action=cargarGrafico",
            dataType: "json"
        })//fin ajax 
       .done(function (data) {
           
     if (data.success) {

         $.each(data.REGIONTOTAL, function (value, key) {
             
             if(value === 0 && (zona == null || zona == 'T')){
                   total(key.uno,key.dos,key.tres,key.cuatro,key.cinco,key.trece,key.seis,key.siete,key.ocho,key.nueve,key.diez,key.once,key.doce)  
             }else if (value === 0 && (zona == 'C' )){
                 centro(key.trece)
             }else if (value === 0 && (zona == 'N' )){
                 norte(key.uno,key.dos,key.tres,key.cuatro,key.cinco)
             }else if (value === 0 && (zona == 'S' )){
                 sur(key.seis,key.siete,key.ocho,key.nueve,key.diez,key.once)
             }
             
                    });
         }
        
            
 }).fail(function (data) {
      
     alert("FAIL!")

     })   
}

function sur(seis,siete,ocho,nueve,diez,once){
    max = Math.max(seis,siete,ocho,nueve,diez,once);

        var randomScalingFactor = function() {
         return Math.round(Math.random() * 100);
            //return 0;
        };
        var randomColorFactor = function() {
            return Math.round(Math.random() * 255);
        };
        var randomColor = function(opacity) {
            return 'rgba(' + randomColorFactor() + ',' + randomColorFactor() + ',' + randomColorFactor() + ',' + (opacity || '.3') + ')';
        };

        var config = {
            type: 'line',
            data: {
                labels: ["I","II","III","IV","V"],
                datasets: [{
                    label: "MORA MOVIL N3 ZONA SUR",
                    fill: false,
                    borderDash: [5, 5]
                }]
            },
            options: {
                responsive: true,
                title:{
                    display:true,
                    text:'MORA SUR DE CHILE'
                },               
                hover: {
                    mode: 'dataset'
                },
                scales: {
                    xAxes: [{
                        display: true,
                        scaleLabel: {
                            show: true,
                            labelString: 'Month'
                        }
                    }],
                    yAxes: [{
                        display: true,
                        scaleLabel: {
                            show: true,
                            labelString: 'Value'
                        },
                        ticks: {
                            suggestedMin: 0,
                            suggestedMax: max * 2 - (max/2),
                        }
                    }]
                }
            }
        };


           $.each(config.data.datasets, function(i, dataset) {
          
            dataset.data = [seis,siete,ocho,nueve,diez,once];
            dataset.borderColor = randomColor(0.4);
            dataset.backgroundColor = randomColor(0.5);
            dataset.pointBorderColor = randomColor(0.7);
            dataset.pointBackgroundColor = randomColor(0.5);
            dataset.pointBorderWidth = 1;
             // dataset.data = [key.I,key.II,key.III,key.IV,key.V,key.XIII,key.VI,key.VII,key.VIII,key.IX,key.X,key.XI];
        });

        var ctx = document.getElementById("canvas").getContext("2d");
            window.myLine = new Chart(ctx, config);  

}
function sur2(seis,siete,ocho,nueve,diez,once,doce,quince){
    max = Math.max(seis,siete,ocho,nueve,diez,once,doce,quince);

        var randomScalingFactor = function() {
         return Math.round(Math.random() * 100);
            //return 0;
        };
        var randomColorFactor = function() {
            return Math.round(Math.random() * 255);
        };
        var randomColor = function(opacity) {
            return 'rgba(' + randomColorFactor() + ',' + randomColorFactor() + ',' + randomColorFactor() + ',' + (opacity || '.3') + ')';
        };

        var config = {
            type: 'line',
            data: {
                labels: ["VI","VII","VIII","XI","X","XI","XII","XV"],
                datasets: [{
                    label: "MORA N3 FIJA ZONA SUR ",
                    fill: false,
                    borderDash: [5, 5]
                }]
            },
            options: {
                responsive: true,
                title:{
                    display:true,
                    text:'MORA SUR DE CHILE'
                },               
                hover: {
                    mode: 'dataset'
                },
                scales: {
                    xAxes: [{
                        display: true,
                        scaleLabel: {
                            show: true,
                            labelString: 'Month'
                        }
                    }],
                    yAxes: [{
                        display: true,
                        scaleLabel: {
                            show: true,
                            labelString: 'Value'
                        },
                        ticks: {
                            suggestedMin: 0,
                            suggestedMax: max * 2 - (max/2),
                        }
                    }]
                }
            }
        };


           $.each(config.data.datasets, function(i, dataset) {
          
            dataset.data = [seis,siete,ocho,nueve,diez,once,doce,quince];
            dataset.borderColor = randomColor(0.4);
            dataset.backgroundColor = randomColor(0.5);
            dataset.pointBorderColor = randomColor(0.7);
            dataset.pointBackgroundColor = randomColor(0.5);
            dataset.pointBorderWidth = 1;
             // dataset.data = [key.I,key.II,key.III,key.IV,key.V,key.XIII,key.VI,key.VII,key.VIII,key.IX,key.X,key.XI];
        });

        var ctx = document.getElementById("canvas2").getContext("2d");
            window.myLine = new Chart(ctx, config);  

}



function norte(uno,dos,tres,cuatro,cinco){
    max = Math.max(uno,dos,tres,cuatro,cinco);

        var randomScalingFactor = function() {
         return Math.round(Math.random() * 100);
            //return 0;
        };
        var randomColorFactor = function() {
            return Math.round(Math.random() * 255);
        };
        var randomColor = function(opacity) {
            return 'rgba(' + randomColorFactor() + ',' + randomColorFactor() + ',' + randomColorFactor() + ',' + (opacity || '.3') + ')';
        };

        var config = {
            type: 'line',
            data: {
                labels: ["I","II","III","IV","V"],
                datasets: [{
                    label: "MORA N3 MOVIL ZONA NORTE",
                    fill: false,
                    borderDash: [5, 5]
                }]
            },
            options: {
                responsive: true,
                title:{
                    display:true,
                    text:'MORA NORTE DE CHILE'
                },               
                hover: {
                    mode: 'dataset'
                },
                scales: {
                    xAxes: [{
                        display: true,
                        scaleLabel: {
                            show: true,
                            labelString: 'Month'
                        }
                    }],
                    yAxes: [{
                        display: true,
                        scaleLabel: {
                            show: true,
                            labelString: 'Value'
                        },
                        ticks: {
                            suggestedMin: 0,
                            suggestedMax: max * 2- (max/2),
                        }
                    }]
                }
            }
        };


           $.each(config.data.datasets, function(i, dataset) {
          
            dataset.data = [uno,dos,tres,cuatro,cinco];
            dataset.borderColor = randomColor(0.4);
            dataset.backgroundColor = randomColor(0.5);
            dataset.pointBorderColor = randomColor(0.7);
            dataset.pointBackgroundColor = randomColor(0.5);
            dataset.pointBorderWidth = 1;
             // dataset.data = [key.I,key.II,key.III,key.IV,key.V,key.XIII,key.VI,key.VII,key.VIII,key.IX,key.X,key.XI];
        });

        var ctx = document.getElementById("canvas").getContext("2d");
            window.myLine = new Chart(ctx, config);  

}
function norte2(uno,dos,tres,cuatro,cinco){
    max = Math.max(uno,dos,tres,cuatro,cinco);

        var randomScalingFactor = function() {
         return Math.round(Math.random() * 100);
            //return 0;
        };
        var randomColorFactor = function() {
            return Math.round(Math.random() * 255);
        };
        var randomColor = function(opacity) {
            return 'rgba(' + randomColorFactor() + ',' + randomColorFactor() + ',' + randomColorFactor() + ',' + (opacity || '.3') + ')';
        };

        var config = {
            type: 'line',
            data: {
                labels: ["I","II","III","IV","V"],
                datasets: [{
                    label: "MORA N3 FIJA ZONA NORTE",
                    fill: false,
                    borderDash: [5, 5]
                }]
            },
            options: {
                responsive: true,
                title:{
                    display:true,
                    text:'MORA NORTE DE CHILE'
                },               
                hover: {
                    mode: 'dataset'
                },
                scales: {
                    xAxes: [{
                        display: true,
                        scaleLabel: {
                            show: true,
                            labelString: 'Month'
                        }
                    }],
                    yAxes: [{
                        display: true,
                        scaleLabel: {
                            show: true,
                            labelString: 'Value'
                        },
                        ticks: {
                            suggestedMin: 0,
                            suggestedMax: max * 2- (max/2),
                        }
                    }]
                }
            }
        };


           $.each(config.data.datasets, function(i, dataset) {
          
            dataset.data = [uno,dos,tres,cuatro,cinco];
            dataset.borderColor = randomColor(0.4);
            dataset.backgroundColor = randomColor(0.5);
            dataset.pointBorderColor = randomColor(0.7);
            dataset.pointBackgroundColor = randomColor(0.5);
            dataset.pointBorderWidth = 1;
             // dataset.data = [key.I,key.II,key.III,key.IV,key.V,key.XIII,key.VI,key.VII,key.VIII,key.IX,key.X,key.XI];
        });

        var ctx = document.getElementById("canvas2").getContext("2d");
            window.myLine = new Chart(ctx, config);  

}
function centro(trece){
      var MONTHS = ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"];
        
        var randomScalingFactor = function() {
         return Math.round(Math.random() * 100);
            //return 0;
        };
        var randomColorFactor = function() {
            return Math.round(Math.random() * 255);
        };
        var randomColor = function(opacity) {
            return 'rgba(' + randomColorFactor() + ',' + randomColorFactor() + ',' + randomColorFactor() + ',' + (opacity || '.3') + ')';
        };

        var config = {
            type: 'line',
            data: {
                labels: ["","RM",""],
                datasets: [{
                    label: "MORA N3 MOVIL ZONA CENTRO",
                    fill: false,
                    borderDash: [5, 5]
                }]
            },
            options: {
                responsive: true,
                title:{
                    display:true,
                    text:'MORA CENTRO DE CHILE'
                },
                tooltips: {
                    mode: 'label',
                    callbacks: {
                        // beforeTitle: function() {
                        //     return '...beforeTitle';
                        // },
                        // afterTitle: function() {
                        //     return '...afterTitle';
                        // },
                        // beforeBody: function() {
                        //     return '...beforeBody';
                        // },
                        // afterBody: function() {
                        //     return '...afterBody';
                        // },
                        // beforeFooter: function() {
                        //     return '...beforeFooter';
                        // },
                        // footer: function() {
                        //     return 'Footer';
                        // },
                        // afterFooter: function() {
                        //     return '...afterFooter';
                        // },
                    }
                },
                hover: {
                    mode: 'dataset'
                },
                scales: {
                    xAxes: [{
                        display: true,
                        scaleLabel: {
                            show: true,
                            labelString: 'Month'
                        }
                    }],
                    yAxes: [{
                        display: true,
                        scaleLabel: {
                            show: true,
                            labelString: 'Value'
                        },
                        ticks: {
                            suggestedMin: 0,
                            suggestedMax: trece * 2,
                        }
                    }]
                }
            }
        };


           $.each(config.data.datasets, function(i, dataset) {
          
            dataset.data = ["",trece,""];
            dataset.borderColor = randomColor(0.4);
            dataset.backgroundColor = randomColor(0.5);
            dataset.pointBorderColor = randomColor(0.7);
            dataset.pointBackgroundColor = randomColor(0.5);
            dataset.pointBorderWidth = 1;
             // dataset.data = [key.I,key.II,key.III,key.IV,key.V,key.XIII,key.VI,key.VII,key.VIII,key.IX,key.X,key.XI];
        });

        var ctx = document.getElementById("canvas").getContext("2d");
            window.myLine = new Chart(ctx, config);
     
}

function centro2(trece){
      var MONTHS = ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"];
        
        var randomScalingFactor = function() {
         return Math.round(Math.random() * 100);
            //return 0;
        };
        var randomColorFactor = function() {
            return Math.round(Math.random() * 255);
        };
        var randomColor = function(opacity) {
            return 'rgba(' + randomColorFactor() + ',' + randomColorFactor() + ',' + randomColorFactor() + ',' + (opacity || '.3') + ')';
        };

        var config = {
            type: 'line',
            data: {
                labels: ["","RM",""],
                datasets: [{
                    label: "MORA N3 FIJA ZONA CENTRO",
                    fill: false,
                    borderDash: [5, 5]
                }]
            },
            options: {
                responsive: true,
                title:{
                    display:true,
                    text:'MORA CENTRO DE CHILE'
                },
                tooltips: {
                    mode: 'label',
                    callbacks: {
                        // beforeTitle: function() {
                        //     return '...beforeTitle';
                        // },
                        // afterTitle: function() {
                        //     return '...afterTitle';
                        // },
                        // beforeBody: function() {
                        //     return '...beforeBody';
                        // },
                        // afterBody: function() {
                        //     return '...afterBody';
                        // },
                        // beforeFooter: function() {
                        //     return '...beforeFooter';
                        // },
                        // footer: function() {
                        //     return 'Footer';
                        // },
                        // afterFooter: function() {
                        //     return '...afterFooter';
                        // },
                    }
                },
                hover: {
                    mode: 'dataset'
                },
                scales: {
                    xAxes: [{
                        display: true,
                        scaleLabel: {
                            show: true,
                            labelString: 'Month'
                        }
                    }],
                    yAxes: [{
                        display: true,
                        scaleLabel: {
                            show: true,
                            labelString: 'Value'
                        },
                        ticks: {
                            suggestedMin: 0,
                            suggestedMax: trece * 2,
                        }
                    }]
                }
            }
        };


           $.each(config.data.datasets, function(i, dataset) {
          
            dataset.data = ["",trece,""];
            dataset.borderColor = randomColor(0.4);
            dataset.backgroundColor = randomColor(0.5);
            dataset.pointBorderColor = randomColor(0.7);
            dataset.pointBackgroundColor = randomColor(0.5);
            dataset.pointBorderWidth = 1;
             // dataset.data = [key.I,key.II,key.III,key.IV,key.V,key.XIII,key.VI,key.VII,key.VIII,key.IX,key.X,key.XI];
        });

        var ctx = document.getElementById("canvas2").getContext("2d");
            window.myLine = new Chart(ctx, config);
     
}


     
function total(uno,dos,tres,cuatro,cinco,trece,seis,siete,ocho,nueve,diez,once,doce){

     max = Math.max(uno,dos,tres,cuatro,cinco,trece,seis,siete,ocho,nueve,diez,once,doce);

      var MONTHS = ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"];
        
        var randomScalingFactor = function() {
         return Math.round(Math.random() * 100);
            //return 0;
        };
        var randomColorFactor = function() {
            return Math.round(Math.random() * 255);
        };
        var randomColor = function(opacity) {
            return 'rgba(' + randomColorFactor() + ',' + randomColorFactor() + ',' + randomColorFactor() + ',' + (opacity || '.3') + ')';
        };

        var config = {
            type: 'line',
            data: {
                labels: ["I", "II", "III", "IV", "V", "RM", "VI","VII","VIII","IX","X","XI","XII"],
                datasets: [{
                    label: "MORA N3 MOVIL EN CHILE",
                    fill: false,
                    borderDash: [5, 5]

                }]
            },
            options: {
                responsive: true,
                tooltips: {
                    mode: 'label',
                    callbacks: {
                        // beforeTitle: function() {
                        //     return '...beforeTitle';
                        // },
                        // afterTitle: function() {
                        //     return '...afterTitle';
                        // },
                        // beforeBody: function() {
                        //     return '...beforeBody';
                        // },
                        // afterBody: function() {
                        //     return '...afterBody';
                        // },
                        // beforeFooter: function() {
                        //     return '...beforeFooter';
                        // },
                        // footer: function() {
                        //     return 'Footer';
                        // },
                        // afterFooter: function() {
                        //     return '...afterFooter';
                        // },
                    }
                },
                hover: {
                    mode: 'dataset'
                },
                scales: {
                    xAxes: [{
                        display: true,
                        scaleLabel: {
                            show: true,
                            labelString: 'Month'
                        }
                    }],
                    yAxes: [{
                        display: true,
                        scaleLabel: {
                            show: true,
                            labelString: 'Value'
                        },
                        ticks: {
                            suggestedMin: 0,
                            suggestedMax: max * 2- (max/2),
                        }
                    }]
                }
            }
        };


           $.each(config.data.datasets, function(i, dataset) {
          
            dataset.data = [uno,dos,tres,cuatro,cinco,trece,seis,siete,ocho,nueve,diez,once,doce];
            dataset.borderColor = randomColor(0.4);
            dataset.backgroundColor = randomColor(0.5);
            dataset.pointBorderColor = randomColor(0.7);
            dataset.pointBackgroundColor = randomColor(0.5);
            dataset.pointBorderWidth = 1;
             // dataset.data = [key.I,key.II,key.III,key.IV,key.V,key.XIII,key.VI,key.VII,key.VIII,key.IX,key.X,key.XI];
        });

        var ctx = document.getElementById("canvas").getContext("2d");
            window.myLine = new Chart(ctx, config);
  
     
}

    
function total2(uno,dos,tres,cuatro,cinco,trece,seis,siete,ocho,nueve,diez,once,doce,quince){
     max = Math.max(uno,dos,tres,cuatro,cinco,trece,seis,siete,ocho,nueve,diez,once,doce,quince);

      var MONTHS = ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"];
        
        var randomScalingFactor = function() {
         return Math.round(Math.random() * 100);
            //return 0;
        };
        var randomColorFactor = function() {
            return Math.round(Math.random() * 255);
        };
        var randomColor = function(opacity) {
            return 'rgba(' + randomColorFactor() + ',' + randomColorFactor() + ',' + randomColorFactor() + ',' + (opacity || '.3') + ')';
        };

        var config = {
            type: 'line',
            data: {
                labels: ["I", "II", "III", "IV", "V", "RM", "VI","VII","VIII","IX","X","XI","XII","XV"],
                datasets: [{
                    label: "MORA FIJA N3 EN CHILE",
                    fill: false,
                    borderDash: [5, 5]
                }]
            },
            options: {
                responsive: true,
                title:{
                    display:true,
                    text:'MORA EN CHILE'
                },
                tooltips: {
                    mode: 'label',
                    callbacks: {
                        // beforeTitle: function() {
                        //     return '...beforeTitle';
                        // },
                        // afterTitle: function() {
                        //     return '...afterTitle';
                        // },
                        // beforeBody: function() {
                        //     return '...beforeBody';
                        // },
                        // afterBody: function() {
                        //     return '...afterBody';
                        // },
                        // beforeFooter: function() {
                        //     return '...beforeFooter';
                        // },
                        // footer: function() {
                        //     return 'Footer';
                        // },
                        // afterFooter: function() {
                        //     return '...afterFooter';
                        // },
                    }
                },
                hover: {
                    mode: 'dataset'
                },
                scales: {
                    xAxes: [{
                        display: true,
                        scaleLabel: {
                            show: true,
                            labelString: 'Month'
                        }
                    }],
                    yAxes: [{
                        display: true,
                        scaleLabel: {
                            show: true,
                            labelString: 'Value'
                        },
                        ticks: {
                            suggestedMin: 0,
                            suggestedMax: max * 2- (max/2),
                        }
                    }]
                }
            }
        };


           $.each(config.data.datasets, function(i, dataset) {
          
            dataset.data = [uno,dos,tres,cuatro,cinco,trece,seis,siete,ocho,nueve,diez,once,doce,quince];
            dataset.borderColor = randomColor(0.4);
            dataset.backgroundColor = randomColor(0.5);
            dataset.pointBorderColor = randomColor(0.7);
            dataset.pointBackgroundColor = randomColor(0.5);
            dataset.pointBorderWidth = 1;
             // dataset.data = [key.I,key.II,key.III,key.IV,key.V,key.XIII,key.VI,key.VII,key.VIII,key.IX,key.X,key.XI];
        });

        var ctm = document.getElementById("canvas2").getContext("2d");
            window.myLine = new Chart(ctm, config);
     
}




  
});