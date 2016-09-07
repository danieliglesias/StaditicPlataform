window.onload = function () {
    Tabla_Movil()
$('#nvars,#nvars2,#nvars3,#nvars4,#nvars5').click(function() {
    $('li').removeClass();
    $(this).parent().addClass('active');
    if ($(this).attr("id") == 'nvars') {
    location.href='http://prd5117/riesgo';
                                        }
if ($(this).attr("id") == 'nvars2') {
    location.href='http://prd5117/panelriesgo';
}

if ($(this).attr("id") == 'nvars3') {
    location.href='http://prd5117/reporterecambio';
}

if ($(this).attr("id") == 'nvars4') {
    location.href='http://prd5117/descargas';
}
if ($(this).attr("id") == 'nvars5') {
    location.href='/comitemovil';
}

});


$("#loginform").submit(function(e) {
   $.ajax({
url: "controller.asp?action=LOGIN",
data: "user="+$("#InputEmail1").val()+"&pass="+$("#InputPassword1").val(),
dataType: "json"
})//fin ajax 
.done(function (data) {
    
if (data.success) {
  
    location.href = 'riesgoupload/default.asp';


}else{
    $("#mensaje").html("")
    $("#mensaje").append("<a href='#' class='close' data-dismiss='alert' aria-label='close'>&times;</a><div class='alert alert-danger' style='padding-top: 5px;padding-bottom: 5px;''><strong>Usuario o contraseña incorrectos</strong></div>");
   
   
}
}).fail(function (data){

    alert("error al login")
})
    e.preventDefault(); // avoid to execute the actual submit of the form.
});














function limpiarcanvas(cinco){
$('#canvas1,#canvas2,#canvas3,#canvas4,#canvas5,#canvas6,#canvas7,#canvas8,#canvas9,#canvas10','#canva1','#canva2','#canva3','#canva4','#canva5','#canva6','#canva7').remove();

if (cinco=="cinco"){
$("#aa,#bb,#cc,#dd,#ee,#ff,#gg,#hh,#ii,#jj").css({"width": "350", "height": "175" ,"float" : "right"});
}else
{
$("#aa,#bb,#cc,#dd,#ee,#ff,#gg,#hh,#ii,#jj").css({"width": "700", "height": "350" ,"float" : "left"});
}
$('#aa').html('<canvas id="canvas1"></canvas>');
$('#bb').html('<canvas id="canvas2"></canvas>');
$('#cc').html('<canvas id="canvas3"></canvas>');
$('#dd').html('<canvas id="canvas4"></canvas>');
$('#ee').html('<canvas id="canvas5"></canvas>');
$('#ff').html('<canvas id="canvas6"></canvas>');
$('#gg').html('<canvas id="canvas7"></canvas>');
$('#hh').html('<canvas id="canvas8"></canvas>');
$('#ii').html('<canvas id="canvas9"></canvas>');
$('#jj').html('<canvas id="canvas10"></canvas>');
}

function Tabla_Movil() {
    limpiarcanvas();
$.ajax({
url: "controller.asp?action=CANAL_MASIVO",
dataType: "json"
})//fin ajax 
.done(function (data) {
    var markup, table, row;
if (data.success) {
    var MES_ALTA = new Array();
    var ALTAS = new Array();
    var N3 = new Array();
$.each(data.MASIVO, function (value, key) {              
    MES_ALTA.push(key.MES_ALTA);
    ALTAS.push(key.ALTAS);
    N3.push(key.N3);                
}); //fin each function
    var media = parseInt(Math.max.apply(null, ALTAS)/10)
    var canvasid = "1"
    var nombre = "Canal Masivo"
    grafico(MES_ALTA,ALTAS,N3,media,canvasid,nombre)
}
}); //fin done function
} // fin funcion 5
       
$('#a').click(function() {
limpiarcanvas();
$.ajax({
url: "controller.asp?action=CANAL_MASIVO",
dataType: "json"
})//fin ajax 
.done(function (data) {
    var markup, table, row;
if (data.success) {
    var MES_ALTA = new Array();
    var ALTAS = new Array();
    var N3 = new Array();
$.each(data.MASIVO, function (value, key) {               
    MES_ALTA.push(key.MES_ALTA);
    ALTAS.push(key.ALTAS);
    N3.push(key.N3);                  
}); //fin each function
    var media = parseInt(Math.max.apply(null, ALTAS)/10)
    var canvasid = "1"
    var nombre = "Canal Masivo"
    grafico(MES_ALTA,ALTAS,N3,media,canvasid,nombre)
}
}); //fin done function
});

$('#b').click(function() {
limpiarcanvas();
$.ajax({
url: "controller.asp?action=PORTABILIDAD",
dataType: "json"
})//fin ajax 
.done(function (data) {
    var markup, table, row;
if (data.success) {
    var MES_ALTA = new Array();
    var ALTAS = new Array();
    var N3 = new Array();
$.each(data.PORTABILIDAD, function (value, key) {              
    MES_ALTA.push(key.MES_ALTA);
    ALTAS.push(key.ALTAS);
    N3.push(key.N3);               
}); //fin each function
    var media = parseInt(Math.max.apply(null, ALTAS))
    var canvasid = "1"
    var nombre = "Portabilidad"
    grafico(MES_ALTA,ALTAS,N3,media,canvasid,nombre)
}
}); //fin done function
});

$('#c').click(function() {
limpiarcanvas();
$.ajax({
url: "controller.asp?action=SEGMENTOPERSONA",
dataType: "json"
})//fin ajax 
.done(function (data) {
    var markup, table, row;
if (data.success) {
    var MES_ALTA = new Array();
    var ALTAS = new Array();
    var N3 = new Array();
$.each(data.SEGPER, function (value, key) {
    MES_ALTA.push(key.MES_ALTA);
    ALTAS.push(key.ALTAS);
    N3.push(key.N3); 
}); //fin each function
    var media = parseInt(Math.max.apply(null, ALTAS)/2)
    var canvasid = "1"
    var nombre = "Segmento Persona"
    grafico(MES_ALTA,ALTAS,N3,media,canvasid,nombre)
}
}); //fin done function
});

$('#d').click(function() {
limpiarcanvas();
$.ajax({
url: "controller.asp?action=ALTANORMALCLIENTENUEVO",
dataType: "json"
})//fin ajax 
.done(function (data) {
    var markup, table, row;
if (data.success) {
    var MES_ALTA = new Array();
    var ALTAS = new Array();
    var N3 = new Array();
$.each(data.ALTNORNUEVO, function (value, key) {
    MES_ALTA.push(key.MES_ALTA);
    ALTAS.push(key.ALTAS);
    N3.push(key.N3);   
}); //fin each function
    var media = parseInt(Math.max.apply(null, ALTAS)/2)
    var canvasid = "1"
    var nombre = "Alta Normal / Cliente Nuevo"
    grafico(MES_ALTA,ALTAS,N3,media,canvasid,nombre)
}
}); //fin done function
});

$('#e').click(function() {
limpiarcanvas();
$.ajax({
url: "controller.asp?action=SEGMENTONEGOCIO",
dataType: "json"
})//fin ajax 
.done(function (data) {
    var markup, table, row;
if (data.success) {
    var MES_ALTA = new Array();
    var ALTAS = new Array();
    var N3 = new Array();
$.each(data.SEGMENTONEG, function (value, key) {
    MES_ALTA.push(key.MES_ALTA);
    ALTAS.push(key.ALTAS);
    N3.push(key.N3);
}); //fin each function
    var media = parseInt(Math.max.apply(null, ALTAS)/2)
    var canvasid = "1"
    var nombre = "Segmento Negocio"
    grafico(MES_ALTA,ALTAS,N3,media,canvasid,nombre)
}
}); //fin done function
});

$('#f').click(function() {
limpiarcanvas();
$.ajax({
url: "controller.asp?action=ALTANORMALCLIENTEVIGENTE",
dataType: "json"
})//fin ajax 
.done(function (data) {
    var markup, table, row;
if (data.success) {
    var MES_ALTA = new Array();
    var ALTAS = new Array();
    var N3 = new Array();
$.each(data.ALTNORVIGENTE, function (value, key) {
    MES_ALTA.push(key.MES_ALTA);
    ALTAS.push(key.ALTAS);
    N3.push(key.N3);               
}); //fin each function
    var media = parseInt(Math.max.apply(null, ALTAS)/2)
    var canvasid = "1"
    var nombre = "Alta Normal / Cliente Vigente"
    grafico(MES_ALTA,ALTAS,N3,media,canvasid,nombre)
}
}); //fin done function
});
       
$('#g').click(function() {
limpiarcanvas();
$.ajax({
url: "controller.asp?action=OPERACIONFIJA",
dataType: "json"
})//fin ajax 
.done(function (data) {
    var markup, table, row;
if (data.success) {
    var MES_ALTA = new Array();
    var ALTAS = new Array();
    var N3 = new Array();
$.each(data.OPERACIONFIJANUEVO, function (value, key) {
    MES_ALTA.push(key.MES_ALTA);
    ALTAS.push(key.ALTAS);
    N3.push(key.N3);
}); //fin each function
    var media = parseInt(Math.max.apply(null, ALTAS)/2)
    var canvasid = "1"
    var nombre = "Operacion Fija / Nuevo"
    grafico(MES_ALTA,ALTAS,N3,media,canvasid,nombre)
        var MES_ALTA = new Array();
        var ALTAS = new Array();
        var N3 = new Array();
    $.each(data.OPERACIONFIJAVIG, function (value, key) {
        MES_ALTA.push(key.MES_ALTA);
        ALTAS.push(key.ALTAS);
        N3.push(key.N3);
    }); //fin each function
        var media = parseInt(Math.max.apply(null, ALTAS)/2)
        var canvasid = "2"
        var nombre = "Operacion Fija / Vigente"
        grafico(MES_ALTA,ALTAS,N3,media,canvasid,nombre)
}
}); //fin done function
});

$('#h').click(function() {
limpiarcanvas();
$.ajax({
url: "controller.asp?action=SEGMENTONUEVOAUTOMICRO",
dataType: "json"
})//fin ajax 
.done(function (data) {
var markup, table, row;
if (data.success) {
    var MES_ALTA = new Array();
    var ALTAS = new Array();
    var N3 = new Array();
$.each(data.SEGNUEVOAUTONOMO, function (value, key) {
    MES_ALTA.push(key.MES_ALTA);
    ALTAS.push(key.ALTAS);
    N3.push(key.N3);
}); //fin each function
    var media = parseInt(Math.max.apply(null, ALTAS)/2)
    var canvasid = "1"
    var nombre = "Segmento Autonomo"
    grafico(MES_ALTA,ALTAS,N3,media,canvasid,nombre)
        var MES_ALTA = new Array();
        var ALTAS = new Array();
        var N3 = new Array();
    $.each(data.SEGNUEVOMICRO, function (value, key) {
        MES_ALTA.push(key.MES_ALTA);
        ALTAS.push(key.ALTAS);
        N3.push(key.N3);
    }); //fin each function
        var media = parseInt(Math.max.apply(null, ALTAS)/2)
        var canvasid = "2"
        var nombre = "Segmento Micro"
        grafico(MES_ALTA,ALTAS,N3,media,canvasid,nombre)
}
}); //fin done function
});

$('#i').click(function() {
limpiarcanvas("cinco");
$.ajax({
url: "controller.asp?action=TENENCIA",
dataType: "json"
})//fin ajax 
.done(function (data) {
var markup, table, row;
if (data.success) {
    var MES_ALTA = new Array();
    var ALTAS = new Array();
    var N3 = new Array();
$.each(data.TRIO, function (value, key) {
    MES_ALTA.push(key.MES_ALTA);
    ALTAS.push(key.ALTAS);
    N3.push(key.N3);                  
}); //fin each function
    var media = parseInt(Math.max.apply(null, ALTAS)/2)
    var canvasid = "1"
    var nombre = "TRIO"
    graficoCINCO(MES_ALTA,ALTAS,N3,media,canvasid,nombre)
        var MES_ALTA = new Array();
        var ALTAS = new Array();
        var N3 = new Array();
    $.each(data.BATV, function (value, key) {
        MES_ALTA.push(key.MES_ALTA);
        ALTAS.push(key.ALTAS);
        N3.push(key.N3);      
    }); //fin each function
        var media = parseInt(Math.max.apply(null, ALTAS)/2)
        var canvasid = "2"
        var nombre = "BA_TV"
        graficoCINCO(MES_ALTA,ALTAS,N3,media,canvasid,nombre)
            var MES_ALTA = new Array();
            var ALTAS = new Array();
            var N3 = new Array();
        $.each(data.ADSL, function (value, key) {
            MES_ALTA.push(key.MES_ALTA);
            ALTAS.push(key.ALTAS);
            N3.push(key.N3);      
        }); //fin each function
            var media = parseInt(Math.max.apply(null, ALTAS)/2)
            var canvasid = "3"
            var nombre = "ADSL"
            graficoCINCO(MES_ALTA,ALTAS,N3,media,canvasid,nombre)
                var MES_ALTA = new Array();
                var ALTAS = new Array();
                var N3 = new Array();
            $.each(data.BALN, function (value, key) {
                MES_ALTA.push(key.MES_ALTA);
                ALTAS.push(key.ALTAS);
                N3.push(key.N3);      
            }); //fin each function
                var media = parseInt(Math.max.apply(null, ALTAS)/2)
                var canvasid = "4"
                var nombre = "BA_LN"
                graficoCINCO(MES_ALTA,ALTAS,N3,media,canvasid,nombre)
                    var MES_ALTA = new Array();
                    var ALTAS = new Array();
                    var N3 = new Array();
                $.each(data.DTH, function (value, key) {
                    MES_ALTA.push(key.MES_ALTA);
                    ALTAS.push(key.ALTAS);
                    N3.push(key.N3);      
                }); //fin each function
                    var media = parseInt(Math.max.apply(null, ALTAS)/2)
                    var canvasid = "5"
                    var nombre = "DTH"
                    graficoCINCO(MES_ALTA,ALTAS,N3,media,canvasid,nombre)
                        var MES_ALTA = new Array();
                        var ALTAS = new Array();
                        var N3 = new Array();
                    $.each(data.STB, function (value, key) {
                        MES_ALTA.push(key.MES_ALTA);
                        ALTAS.push(key.ALTAS);
                        N3.push(key.N3);      
                    }); //fin each function
                        var media = parseInt(Math.max.apply(null, ALTAS)/2)
                        var canvasid = "6"
                        var nombre = "STB"
                        graficoCINCO(MES_ALTA,ALTAS,N3,media,canvasid,nombre)
                            var MES_ALTA = new Array();
                            var ALTAS = new Array();
                            var N3 = new Array();
                        $.each(data.LNTV, function (value, key) {
                            MES_ALTA.push(key.MES_ALTA);
                            ALTAS.push(key.ALTAS);
                            N3.push(key.N3);      
                        }); //fin each function
                            var media = parseInt(Math.max.apply(null, ALTAS)/2)
                            var canvasid = "7"
                            var nombre = "LN_TV"
                            graficoCINCO(MES_ALTA,ALTAS,N3,media,canvasid,nombre)
}
}); //fin done function
});

$('#j').click(function() {
limpiarcanvas();
$.ajax({
url: "controller.asp?action=PERSONANATURACONGIRO",
dataType: "json"
})//fin ajax 
.done(function (data) {
    var markup, table, row;
if (data.success) {
    var MES_ALTA = new Array();
    var ALTAS = new Array();
    var N3 = new Array();
$.each(data.ME50MIL, function (value, key) {
    MES_ALTA.push(key.MES_ALTA);
    ALTAS.push(key.ALTAS);
    N3.push(key.N3);    
}); //fin each function
    var media = parseInt(Math.max.apply(null, ALTAS)/2)
    var canvasid = "1"
    var nombre = "< 50 Mil"
    grafico(MES_ALTA,ALTAS,N3,media,canvasid,nombre)
        var MES_ALTA = new Array();
        var ALTAS = new Array();
        var N3 = new Array();
    $.each(data.MA50MIL, function (value, key) {
        MES_ALTA.push(key.MES_ALTA);
        ALTAS.push(key.ALTAS);
        N3.push(key.N3);              
    }); //fin each function
        var media = parseInt(Math.max.apply(null, ALTAS)/2)
        var canvasid = "2"
        var nombre = "> 50 Mil"
        grafico(MES_ALTA,ALTAS,N3,media,canvasid,nombre)
}
}); //fin done function
});

$('#k').click(function() {
limpiarcanvas("cinco");
$.ajax({
url: "controller.asp?action=CANALVENTA",
dataType: "json"
})//fin ajax 
.done(function (data) {
    var markup, table, row;
if (data.success) {
    var MES_ALTA = new Array();
    var ALTAS = new Array();
    var N3 = new Array();
$.each(data.CVFTER, function (value, key) {
    MES_ALTA.push(key.MES_ALTA);
    ALTAS.push(key.ALTAS);
    N3.push(key.N3);    
}); //fin each function
    var media = parseInt(Math.max.apply(null, ALTAS)/2)
    var canvasid = "1"
    var nombre = "Franquiciado terreno"
    graficoCINCO(MES_ALTA,ALTAS,N3,media,canvasid,nombre,"")
        var MES_ALTA = new Array();
        var ALTAS = new Array();
        var N3 = new Array();
    $.each(data.CVCARE, function (value, key) {
        MES_ALTA.push(key.MES_ALTA);
        ALTAS.push(key.ALTAS);
        N3.push(key.N3);              
    }); //fin each function
        var media = parseInt(Math.max.apply(null, ALTAS)/2)
        var canvasid = "2"
        var nombre = "Canal Remoto"
        graficoCINCO(MES_ALTA,ALTAS,N3,media,canvasid,nombre)
            var MES_ALTA = new Array();
            var ALTAS = new Array();
            var N3 = new Array();
        $.each(data.CVPOVE, function (value, key) {
            MES_ALTA.push(key.MES_ALTA);
            ALTAS.push(key.ALTAS);
            N3.push(key.N3);              
        }); //fin each function
            var media = parseInt(Math.max.apply(null, ALTAS)/2)
            var canvasid = "3"
            var nombre = "Postventa"
            graficoCINCO(MES_ALTA,ALTAS,N3,media,canvasid,nombre)
                var MES_ALTA = new Array();
                var ALTAS = new Array();
                var N3 = new Array();
            $.each(data.CVFAPR, function (value, key) {
                MES_ALTA.push(key.MES_ALTA);
                ALTAS.push(key.ALTAS);
                N3.push(key.N3);              
            }); //fin each function
                var media = parseInt(Math.max.apply(null, ALTAS)/2)
                var canvasid = "4"
                var nombre = "Franquiciado Precencial"
                graficoCINCO(MES_ALTA,ALTAS,N3,media,canvasid,nombre)
}
}); //fin done function
});


$('#m').click(function() {
limpiarcanvas("cinco");
$.ajax({
url: "controller.asp?action=SUBCANALVENTA",
dataType: "json"
})//fin ajax 
.done(function (data) {
    var markup, table, row;
if (data.success) {
    var MES_ALTA = new Array();
    var ALTAS = new Array();
    var N3 = new Array();
$.each(data.CRTERR, function (value, key) {
    MES_ALTA.push(key.MES_ALTA);
    ALTAS.push(key.ALTAS);
    N3.push(key.N3);    
}); //fin each function
    var media = parseInt(Math.max.apply(null, ALTAS)/2)
    var canvasid = "1"
    var nombre = "Franquiciado terreno / Terreno"
    graficoCINCO(MES_ALTA,ALTAS,N3,media,canvasid,nombre)
        var MES_ALTA = new Array();
        var ALTAS = new Array();
        var N3 = new Array();
    $.each(data.CROUHO, function (value, key) {
        MES_ALTA.push(key.MES_ALTA);
        ALTAS.push(key.ALTAS);
        N3.push(key.N3);    
    }); //fin each function
        var media = parseInt(Math.max.apply(null, ALTAS)/2)
        var canvasid = "2"
        var nombre = "Canales Remoto / Outbound Hogar "
        graficoCINCO(MES_ALTA,ALTAS,N3,media,canvasid,nombre)
            var MES_ALTA = new Array();
            var ALTAS = new Array();
            var N3 = new Array();
        $.each(data.CRINHO, function (value, key) {
            MES_ALTA.push(key.MES_ALTA);
            ALTAS.push(key.ALTAS);
            N3.push(key.N3);    
        }); //fin each function
            var media = parseInt(Math.max.apply(null, ALTAS)/2)
            var canvasid = "3"
            var nombre = "Canales Remoto / Inbound Hogar "
            graficoCINCO(MES_ALTA,ALTAS,N3,media,canvasid,nombre)
                var MES_ALTA = new Array();
                var ALTAS = new Array();
                var N3 = new Array();
            $.each(data.CRINTL, function (value, key) {
                MES_ALTA.push(key.MES_ALTA);
                ALTAS.push(key.ALTAS);
                N3.push(key.N3);    
            }); //fin each function
                var media = parseInt(Math.max.apply(null, ALTAS)/2)
                var canvasid = "4"
                var nombre = "Canales Remoto / Inbound TLM "
                graficoCINCO(MES_ALTA,ALTAS,N3,media,canvasid,nombre)
                    var MES_ALTA = new Array();
                    var ALTAS = new Array();
                    var N3 = new Array();
                $.each(data.CRINCO, function (value, key) {
                    MES_ALTA.push(key.MES_ALTA);
                    ALTAS.push(key.ALTAS);
                    N3.push(key.N3);    
                }); //fin each function
                    var media = parseInt(Math.max.apply(null, ALTAS)/2)
                    var canvasid = "5"
                    var nombre = "Canales Remoto / Inbound Convergente "
                    graficoCINCO(MES_ALTA,ALTAS,N3,media,canvasid,nombre)
                        var MES_ALTA = new Array();
                        var ALTAS = new Array();
                        var N3 = new Array();
                    $.each(data.CRINNE, function (value, key) {
                        MES_ALTA.push(key.MES_ALTA);
                        ALTAS.push(key.ALTAS);
                        N3.push(key.N3);    
                    }); //fin each function
                        var media = parseInt(Math.max.apply(null, ALTAS)/2)
                        var canvasid = "6"
                        var nombre = "Canales Remoto / Inbound Negocio "
                        graficoCINCO(MES_ALTA,ALTAS,N3,media,canvasid,nombre)
                            var MES_ALTA = new Array();
                            var ALTAS = new Array();
                            var N3 = new Array();
                        $.each(data.CROUNE, function (value, key) {
                            MES_ALTA.push(key.MES_ALTA);
                            ALTAS.push(key.ALTAS);
                            N3.push(key.N3);    
                        }); //fin each function
                            var media = parseInt(Math.max.apply(null, ALTAS)/2)
                            var canvasid = "7"
                            var nombre = "Canales Remoto / Outbound Negocio "
                            graficoCINCO(MES_ALTA,ALTAS,N3,media,canvasid,nombre)
}
}); //fin done function
});



$('#n').click(function() {
limpiarcanvas();
$.ajax({
url: "controller.asp?action=COMPCHURNTOTAL",
dataType: "json"
})//fin ajax 
.done(function (data) {
var markup, table, row;
if (data.success) {
    var MES_ALTA = new Array();
    var N3 = new Array();
    var N3TOT = new Array();
    var N6_Mora = new Array();
    var N6_MoraTOT = new Array();
    var N6_Vol = new Array();
    var N6_VolTOT = new Array();
    var N7_N12Mora = new Array();
    var N7_N12MoraTOT = new Array();
    var N7_N12Vol = new Array();
    var N7_N12VolTOT = new Array();
    var N12Total = new Array();
    var N12TotalTOT = new Array();
    var N6_Total = new Array();
    var N6_TotalTOT = new Array();
$.each(data.COMCHU, function (value, key) {
    MES_ALTA.push(key.MES_ALTA);    
    N3.push(key.N3);
    N3TOT.push(key.N3TOT);
    N6_Mora.push(key.N6_Mora);
    N6_MoraTOT.push(key.N6_MoraTOT);
    N6_Vol.push(key.N6_Vol);
    N6_VolTOT.push(key.N6_VolTOT);
    N7_N12Mora.push(key.N7_N12Mora);
    N7_N12MoraTOT.push(key.N7_N12MoraTOT);
    N7_N12Vol.push(key.N7_N12Vol);
    N7_N12VolTOT.push(key.N7_N12VolTOT);
    N12Total.push(key.N12Total);
    N12TotalTOT.push(key.N12TotalTOT);
    N6_Total.push(key.N6_Total);
    N6_TotalTOT.push(key.N6_TotalTOT);
}); //fin each function
    var canvasid = "1"
    var nombre = "Franquiciado terreno / Terreno"
    graficoSTACKEDBAR(MES_ALTA,N3,N3TOT,N6_Mora,N6_MoraTOT,N6_Vol,N6_VolTOT,N7_N12Mora,N7_N12MoraTOT,N7_N12Vol,N7_N12VolTOT,N12Total,N12TotalTOT,N6_Total,N6_TotalTOT,canvasid,nombre)
}
}); //fin done function
});



function graficoSTACKEDBAR(MES_ALTA,N3,N3TOT,N6_Mora,N6_MoraTOT,N6_Vol,N6_VolTOT,N7_N12Mora,N7_N12MoraTOT,N7_N12Vol,N7_N12VolTOT,N12Total,N12TotalTOT,N6_Total,N6_TotalTOT,canvasid,nombre){
    var ctx = document.getElementById("canvas1").getContext("2d");
    var gradient = ctx.createLinearGradient(0, 0, 0, 400);
        gradient.addColorStop(0, 'rgba(0, 120, 245, 5)');
        gradient.addColorStop(0.5, 'rgba(0, 140, 245, 0.7)');   
        gradient.addColorStop(1, 'rgba(0, 158, 245, 0.1)');
    /*var randomScalingFactor = function() {
    return (Math.random() > 0.5 ? 1.0 : 1.0) * Math.round(Math.random() * 1000);
    };
    var randomColorFactor = function() {
    return Math.round(Math.random() * 255);
    };*/
    var barChartData = {
    labels: [MES_ALTA[0], MES_ALTA[1], MES_ALTA[2], MES_ALTA[3], MES_ALTA[4], MES_ALTA[5], MES_ALTA[6],MES_ALTA[7],MES_ALTA[8],MES_ALTA[9],MES_ALTA[10],MES_ALTA[11],
    MES_ALTA[12],MES_ALTA[13],MES_ALTA[14],MES_ALTA[15],MES_ALTA[16],MES_ALTA[17],MES_ALTA[18],MES_ALTA[19]],
    datasets: [{
    label: "N6-Total",
    type: 'line',
    fill: false,
    lineTension: 0.5,
    backgroundColor: "blue",
    borderColor: "blue",
    borderCapStyle: 'butt',
    borderDash: [],
    borderDashOffset: 0.0,
    borderJoinStyle: 'miter',
    pointBorderColor: "rgba(75,192,192,1)",
    pointBackgroundColor: "#fff",
    pointBorderWidth: 5,
    pointHoverRadius: 5,
    pointHoverBackgroundColor: "rgba(75,192,192,1)",
    pointHoverBorderColor: "rgba(220,220,220,1)",
    pointHoverBorderWidth: 2,
    pointRadius: 1,
    pointHitRadius: 10,
    data: [N6_MoraTOT[0]+N6_VolTOT[0],
    N6_MoraTOT[1]+N6_VolTOT[1],
    N6_MoraTOT[2]+N6_VolTOT[2],
    N6_MoraTOT[3]+N6_VolTOT[3],
    N6_MoraTOT[4]+N6_VolTOT[4],
    N6_MoraTOT[5]+N6_VolTOT[5],
    N6_MoraTOT[6]+N6_VolTOT[6],
    N6_MoraTOT[7]+N6_VolTOT[7],
    N6_MoraTOT[8]+N6_VolTOT[8],
    N6_MoraTOT[9]+N6_VolTOT[9],
    N6_MoraTOT[10]+N6_VolTOT[10],
    N6_MoraTOT[11]+N6_VolTOT[11],
    N6_MoraTOT[12]+N6_VolTOT[12],
    N6_MoraTOT[13]+N6_VolTOT[13],
    N6_MoraTOT[14]+N6_VolTOT[14],
    N6_MoraTOT[15]+N6_VolTOT[15],
    N6_MoraTOT[16]+N6_VolTOT[16],
    N6_MoraTOT[17]+N6_VolTOT[17],
    N6_MoraTOT[18]+N6_VolTOT[18],
    N6_MoraTOT[19]+N6_VolTOT[19],
    N6_MoraTOT[20]+N6_VolTOT[20],
    N6_MoraTOT[21]+N6_VolTOT[21],
    N6_MoraTOT[22]+N6_VolTOT[22]]
    },{
    label: "N12-Total",
    type: 'line',
    fill: false,
    lineTension: 0.5,
    backgroundColor: "red",
    borderColor: "red",
    borderCapStyle: 'butt',
    borderDash: [],
    borderDashOffset: 0.0,
    borderJoinStyle: 'miter',
    pointBorderColor: "rgba(75,192,192,1)",
    pointBackgroundColor: "#fff",
    pointBorderWidth: 5,
    pointHoverRadius: 5,
    pointHoverBackgroundColor: "rgba(75,192,192,1)",
    pointHoverBorderColor: "rgba(220,220,220,1)",
    pointHoverBorderWidth: 2,
    pointRadius: 1,
    pointHitRadius: 10,
    data: [N7_N12MoraTOT[0]+N7_N12VolTOT[0], 
    N7_N12MoraTOT[1]+N7_N12VolTOT[1], 
    N7_N12MoraTOT[2]+N7_N12VolTOT[2],
    N7_N12MoraTOT[3]+N7_N12VolTOT[3],
    N7_N12MoraTOT[4]+N7_N12VolTOT[4],
    N7_N12MoraTOT[5]+N7_N12VolTOT[5],
    N7_N12MoraTOT[6]+N7_N12VolTOT[6],
    N7_N12MoraTOT[7]+N7_N12VolTOT[7],
    N7_N12MoraTOT[8]+N7_N12VolTOT[8],
    N7_N12MoraTOT[9]+N7_N12VolTOT[9],
    N7_N12MoraTOT[10]+N7_N12VolTOT[10],
    N7_N12MoraTOT[11]+N7_N12VolTOT[11],
    N7_N12MoraTOT[12]+N7_N12VolTOT[12],
    N7_N12MoraTOT[13]+N7_N12VolTOT[13]]
    },{
        label: 'N6-Mora',
        backgroundColor: gradient,
        data: [N6_MoraTOT[0], N6_MoraTOT[1], N6_MoraTOT[2], N6_MoraTOT[3], N6_MoraTOT[4], N6_MoraTOT[5], N6_MoraTOT[6],N6_MoraTOT[7],N6_MoraTOT[8],
        N6_MoraTOT[9],N6_MoraTOT[10],N6_MoraTOT[11],N6_MoraTOT[12],N6_MoraTOT[13],N6_MoraTOT[14],N6_MoraTOT[15],N6_MoraTOT[16],N6_MoraTOT[17],N6_MoraTOT[18],
        N6_MoraTOT[19]]
    }, {
            label: 'N6-Vol',
            backgroundColor: "rgba(231, 95, 0, 0.7)",
            data: [N6_VolTOT[0], N6_VolTOT[1], N6_VolTOT[2], N6_VolTOT[3], N6_VolTOT[4], N6_VolTOT[5], N6_VolTOT[6],N6_VolTOT[7],N6_VolTOT[8],
            N6_VolTOT[9],N6_VolTOT[10],N6_VolTOT[11],N6_VolTOT[12],N6_VolTOT[13],N6_VolTOT[14],N6_VolTOT[15],N6_VolTOT[16],N6_VolTOT[17],N6_VolTOT[18],
            N6_VolTOT[19]]
    }, {
            label: 'N7-M12-Mora',
            backgroundColor: "rgba(173, 192, 69, 1)",
            data: [N7_N12MoraTOT[0],N7_N12MoraTOT[1], N7_N12MoraTOT[2], N7_N12MoraTOT[3], N7_N12MoraTOT[4], N7_N12MoraTOT[5], N7_N12MoraTOT[6],N7_N12MoraTOT[7],N7_N12MoraTOT[8],
            N7_N12MoraTOT[9],N7_N12MoraTOT[10],N7_N12MoraTOT[11],N7_N12MoraTOT[12],N7_N12MoraTOT[13]]
    }, {
            label: 'N7-N12-Vol',
            backgroundColor: "rgba(61, 185, 40, 0.7)",
            data: [N7_N12VolTOT[0],N7_N12VolTOT[1], N7_N12VolTOT[2], N7_N12VolTOT[3], N7_N12VolTOT[4], N7_N12VolTOT[5], N7_N12VolTOT[6],N7_N12VolTOT[7],N7_N12VolTOT[8],
            N7_N12VolTOT[9],N7_N12VolTOT[10],N7_N12VolTOT[11],N7_N12VolTOT[12],N7_N12VolTOT[13]]
    }]
    };

    window.myBar = new Chart(ctx, {
    type: 'bar',
    data: barChartData,
    options: {

    title:{
        display:true,
        text:"Compocición de Churn Total"
    },
    tooltips: {
        mode: 'label'
    },
    events: false,
    scales:
    {
    yAxes: [{
        display: false
    }]
    },
    animation: {
    duration: 0,
    onComplete: function () {
        var ctx = this.chart.ctx;
        ctx.font = Chart.helpers.fontString(Chart.defaults.global.defaultFontFamily, 'normal', Chart.defaults.global.defaultFontFamily);
        ctx.textAlign = 'center';
        ctx.textBaseline = 'bottom';
        var vari = 0
    this.data.datasets.forEach(function (dataset) {
    for (var i = 0; i < dataset.data.length; i++) {
    if(dataset.label == 'N12-Total' || dataset.label == 'N6-Total'){
    //nada                   
    }else{
    if(dataset.label == 'N6-Mora'){
        var model = dataset.metaData[i]._model;
        ctx.save();
        ctx.translate(model.x , model.y+25);
        //ctx.rotate(-0.5*Math.PI);
        ctx.font = "9px Arial";
        ctx.lineWidth = 0.8;
        ctx.fillStyle = "black";
        ctx.strokeText(N6_Mora[i] + "%", 0, 0); 
        ctx.restore();
    }else if (dataset.label == 'N6-Vol'){
        var model = dataset.metaData[i]._model;
        ctx.save();
        ctx.translate(model.x , model.y+25);
        //ctx.rotate(-0.5*Math.PI);
        ctx.font = "9px Arial";
        ctx.lineWidth = 0.8;
        ctx.fillStyle = "black";
        ctx.strokeText(N6_Vol[i] + "%", 0, 0); 
        ctx.restore();       
    }else if (dataset.label == 'N7-M12-Mora'){
        var model = dataset.metaData[i]._model;
        ctx.save();
        ctx.translate(model.x , model.y+25);
        //ctx.rotate(-0.5*Math.PI);
        ctx.font = "9px Arial";
        ctx.lineWidth = 0.8;
        ctx.fillStyle = "black";
        ctx.strokeText(N7_N12Mora[i] + "%", 0, 0); 
        ctx.restore();
    }else {
        var model = dataset.metaData[i]._model;
        ctx.save();
        ctx.translate(model.x , model.y+25);
        //ctx.rotate(-0.5*Math.PI);
        ctx.font = "9px Arial";
        ctx.lineWidth = 0.8;
        ctx.fillStyle = "black";
        ctx.strokeText(N7_N12Vol[i] + "%", 0, 0);
        ctx.restore();
    }
    }
    }
    });               
    }},
        responsive: true,
    scales: {
    xAxes: [{
        stacked: true,
    }],
    yAxes: [{
        stacked: true
    }]
    }
    }
    });
    }

function grafico(MES_ALTA,ALTAS,N3,media,canvasid,nombre){        
    var ctx = document.getElementById("canvas"+canvasid).getContext("2d");
    var gradient = ctx.createLinearGradient(0, 0, 0, 400);
        gradient.addColorStop(0, 'rgba(0, 120, 245, 5)');
        gradient.addColorStop(0.5, 'rgba(0, 140, 245, 0.7)');   
        gradient.addColorStop(1, 'rgba(0, 158, 245, 0.1)');
    var barChartData = {
    labels: [MES_ALTA[0], MES_ALTA[1], MES_ALTA[2], MES_ALTA[3], MES_ALTA[4], MES_ALTA[5], MES_ALTA[6], MES_ALTA[7], MES_ALTA[8], MES_ALTA[9], MES_ALTA[10], MES_ALTA[11],MES_ALTA[12] , MES_ALTA[13], MES_ALTA[14]],
    datasets: [{
    label: 'Altas',
    backgroundColor: gradient,
    data: [ALTAS[0], ALTAS[1], ALTAS[2], ALTAS[3], ALTAS[4], ALTAS[5], ALTAS[6],ALTAS[7],ALTAS[8],ALTAS[9],ALTAS[10],ALTAS[11],ALTAS[12],ALTAS[13],ALTAS[14]]
    }, {
    label: "N6",
    type: 'line',
    fill: false,
    lineTension: 0.5,
    backgroundColor: "rgba(137, 230, 151, 1)",
    borderColor: "rgba(0, 185, 0, 0.6)",
    borderCapStyle: 'butt',
    borderDash: [],
    borderDashOffset: 0.0,
    borderJoinStyle: 'miter',
    pointBorderColor: "rgba(0, 185, 0, 0.6)",
    pointBackgroundColor: "#fff",
    pointBorderWidth: 5,
    pointHoverRadius: 5,
    pointHoverBackgroundColor: "rgba(0, 185, 0, 0.6)",
    pointHoverBorderColor: "rgba(0, 185, 0, 0.6)",
    pointHoverBorderWidth: 2,
    pointRadius: 1,
    pointHitRadius: 10,
    data: [N3[0]*media/2, N3[1]*media/2, N3[2]*media/2, N3[3]*media/2, N3[4]*media/2, N3[5]*media/2, N3[6]*media/2,N3[7]*media/2,N3[8]*media/2,N3[9]*media/2,N3[10]*media/2,N3[11]*media/2,N3[12]*media/2]
    }]
    };
    var options = {
    title: {
        display: true,
        text: nombre
    },
    tooltips: {
        mode: 'label'
    },
        events: false,
        scales:
    {
    yAxes: [{
        display: false
    }]
    },
    animation: {
    duration: 0,
    onComplete: function () {
            var ctx = this.chart.ctx;
            ctx.font = Chart.helpers.fontString(Chart.defaults.global.defaultFontFamily, 'normal', Chart.defaults.global.defaultFontFamily);
            ctx.textAlign = 'center';
            ctx.textBaseline = 'bottom';
            var vari = 0
        this.data.datasets.forEach(function (dataset) {
            for (var i = 0; i < dataset.data.length; i++) {
                if (dataset.label == 'N3' || dataset.label == 'N6') {
                    if (dataset.data[i] != 0) {  
                        var model = dataset.metaData[i]._model;
                        ctx.shadowBlur = 2;
                        ctx.shadowColor = "black";
                        ctx.fillStyle = "rgba(44, 206, 68, 1)";
                        ctx.fillRect(model.x - 18, model.y - 20 , 35, 20);
                        ctx.fillStyle = "black";
                        ctx.fillText((dataset.data[i]/media*2).toFixed(1)+"%", model.x, model.y - 5  );                    
                    } else {
                        var model = dataset.metaData[i]._model;
                        ctx.save();
                        ctx.font = "14px Arial";
                        ctx.lineWidth = 0.8;
                        ctx.fillStyle = "black";
                        ctx.translate(model.x + 8, model.y + (260 - model.y));
                        ctx.rotate(-0.5 * Math.PI);
                        ctx.strokeText(dataset.data[i], 0, 0);
                        ctx.restore();
                    }
                }}
                });
                }},responsive: true
            }

    var myBarChart = new Chart(ctx, {
        type: 'bar',
        data: barChartData,
        options: options
    });
}//FIN FUNCION GRAFICO MASIVO

function graficoCINCO(MES_ALTA,ALTAS,N3,media,canvasid,nombre){
    var ctx = document.getElementById("canvas"+canvasid).getContext("2d");
    var gradient = ctx.createLinearGradient(0, 0, 0, 400);
        gradient.addColorStop(0, 'rgba(0, 120, 245, 5)');
        gradient.addColorStop(0.5, 'rgba(0, 140, 245, 0.7)');   
        gradient.addColorStop(1, 'rgba(0, 158, 245, 0.1)');
    var barChartData = {
    labels: [MES_ALTA[0], MES_ALTA[1], MES_ALTA[2], MES_ALTA[3], MES_ALTA[4], MES_ALTA[5]],
    datasets: [{
    label: 'Altas',
    backgroundColor: gradient,
    data: [ALTAS[0]*2, ALTAS[1]*2, ALTAS[2]*2, ALTAS[3]*2, ALTAS[4]*2, ALTAS[5]*2]
    }, {
    label: "N6",
    type: 'line',
    fill: false,
    lineTension: 0.5,
    backgroundColor: "rgba(137, 230, 151, 1)",
    borderColor: "rgba(0, 185, 0, 0.6)",
    borderCapStyle: 'butt',
    borderDash: [],
    borderDashOffset: 0.0,
    borderJoinStyle: 'miter',
    pointBorderColor: "rgba(0, 185, 0, 0.6)",
    pointBackgroundColor: "#fff",
    pointBorderWidth: 5,
    pointHoverRadius: 5,
    pointHoverBackgroundColor: "rgba(0, 185, 0, 0.6)",
    pointHoverBorderColor: "rgba(0, 185, 0, 0.6)",
    pointHoverBorderWidth: 2,
    pointRadius: 1,
    pointHitRadius: 10,
    data: [N3[0]*media/2, N3[1]*media/2, N3[2]*media/2, N3[3]*media/2]
    }]
    };
    var options = {
    title: {
        display: true,
        text: nombre
    },
    tooltips: {
        mode: 'label'
    },
        events: false,
        scales:
    {
    yAxes: [{
        display: false
    }]
    },
    animation: {
    duration: 0,
    onComplete: function () {
        var ctx = this.chart.ctx;
        ctx.font = Chart.helpers.fontString(Chart.defaults.global.defaultFontFamily, 'normal', Chart.defaults.global.defaultFontFamily);
        ctx.textAlign = 'center';
        ctx.textBaseline = 'bottom';
        var vari = 0
    this.data.datasets.forEach(function (dataset) {
    for (var i = 0; i < dataset.data.length; i++) {
    if (dataset.label == 'N3' || dataset.label == 'N6') {
    if (dataset.data[i] != 0) {  
        var model = dataset.metaData[i]._model;
        ctx.shadowBlur = 2;
        ctx.shadowColor = "black";
        ctx.fillStyle = "rgba(44, 206, 68, 1)";
        ctx.fillRect(model.x - 18, model.y - 20 , 35, 20);
        ctx.fillStyle = "black";
        ctx.fillText((dataset.data[i]/media*2).toFixed(1)+"%", model.x, model.y - 5  );
    } else {
        var model = dataset.metaData[i]._model;
        ctx.save();
        ctx.font = "14px Arial";
        ctx.lineWidth = 0.8;
        ctx.fillStyle = "black";
        ctx.translate(model.x + 8, model.y + (model.y/30));
        ctx.rotate(-0.5 * Math.PI);
        ctx.strokeText(dataset.data[i], 0, 0);
        ctx.restore();
    }
    }}
    });
    }}, responsive: true
    }
    var myBarChart = new Chart(ctx, {
    type: 'bar',
    data: barChartData,
    options: options
    });
    }//FIN FUNCION GRAFICO MASIVO
}// FIN DOCUMENTO IS READY 