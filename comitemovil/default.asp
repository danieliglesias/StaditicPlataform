<%If Session("usuario")="riesgo" Then
Response.Redirect "http://localhost/riesgoupload/"
  
Else%>
  
<!doctype html>
<html>

<head>
    <title>RIESGO COMERCIAL</title>
     <meta charset="utf-8" />
    <link href="../css/bootstrap.css" rel="stylesheet" media="screen">
      <link href="../css/style.css" rel="stylesheet">
    <script src="../js/jquery.min.js"></script>
     <script src="/..js/bootstrap.min.js"></script>
    <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
    <script src="../js/Chart.bundle.js"></script>
   <script src="js/Script.js"></script>
    
    
    <style>
    canvas{
        -moz-user-select: none;
        -webkit-user-select: none;
        -ms-user-select: none;
    }
    </style>
</head>

<body>
        
    <div class="row">
      
                <div id="header"><img style="width: 250px; height:90px; margin-left:20px;" alt="Brand" src="../img/company_logo.png"></div>

    </div>

    
     
<nav class="navbar navbar-default">
  <div class="container-fluid">
    <!-- Brand and toggle get grouped for better mobile display -->
    <div class="navbar-header">
   
       <a class="navbar-brand" href="#">
        <img style="width: 40px; height:40px;"" alt="Brand" src="../img/home_icon.png">
      </a>
    </div>

    <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
      <ul class="nav navbar-nav">
        <li class="active"><a id="nvars" href="#">Comite Fija</a></li>
        <li><a id="nvars5" href="#">Comite Movil</a></li>
        <li><a id="nvars2" href="#">Panel Regional</a></li>
        <li><a id="nvars3" href="#">Reporte Recambios</a></li>
        <li><a id="nvars4" href="#">Descarga Archivos</a></li>
      </ul>
    
      <ul class="nav navbar-nav navbar-right">
        <li><a href="#" data-toggle="modal" data-target="#myModal">Entrar</a></li>
     
      </ul>
    </div><!-- /.navbar-collapse -->
  </div><!-- /.container-fluid -->
</nav>
       
    <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="myModalLabel" style="">Login</h4>
      </div>
      <div class="modal-body">
<form id="loginform">
  <div class="form-group">
  <label for="exampleInputEmail1">Usuario</label>
  <input type="text" class="form-control" id="InputEmail1" placeholder="Usuario">
  </div>
  <div class="form-group">
  <label for="exampleInputPassword1">Contraseña</label>
  <input type="password" class="form-control" id="InputPassword1" placeholder="Password">
  </div>
  <div id="mensaje"></div>
  <button type="submit" id="login" class="btn btn-default">Entrar</button>
</form>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Cerrar</button>
        
      </div>
    </div>
  </div>
</div>
    
       <div class="container" id="comite">
       <div class="col-md-3"> <!-- tabs left -->
      <div class="tabbable tabs-left">
        <ul class="nav nav-tabs">
        <li class="active"><a href="#a"  id="grafico1" data-toggle="tab">Canal Masivo</a></li>
        <li><a href="#b" id="grafico2" data-toggle="tab">Morosidad Movil</a></li>
        <li><a href="#c" id="grafico3" data-toggle="tab">Portabilidad</a></li>
        <li><a href="#d" id="grafico4" data-toggle="tab">Alta Normal - Clientes Nuevos</a></li>
        <li><a href="#e" id="grafico5" data-toggle="tab">Clientes Vigentes</a></li>
        <li><a href="#f" id="grafico6" data-toggle="tab">Alta Normal - Clientes Vigentes</a></li>
        <li><a href="#g" id="grafico7" data-toggle="tab">Alta Normal - Ingreso SCL</a></li>
        <li><a href="#h" id="grafico8" data-toggle="tab">Segmento</a></li>
        <li><a href="#k" id="grafico9" data-toggle="tab">Canales de venta</a></li>
        <li><a href="#n" id="grafico10" data-toggle="tab">Total Altas Con Sin/Equipo</a></li>
        <li><a href="#n" id="grafico11" data-toggle="tab">BAM 6 meses</a></li>
        </ul>

        </div>
           </div>
        <div class="col-md-9">
        <div class="tab-content">
         <div class="tab-pane active" id="a"> 
            <div id="aa"">
                <canvas id="canvas1"></canvas>        
            </div>
            <div id="bb">
                <canvas id="canvas2"></canvas>    
            </div>
            <div id="cc">
                <canvas id="canvas3"></canvas>    
            </div>
            <div id="dd">
                <canvas id="canvas4"></canvas>    
            </div>
            <div id="ee">
                <canvas id="canvas5"></canvas>    
            </div>
            <div id="ff">
                <canvas id="canvas6"></canvas>    
            </div>
            <div id="gg">
                <canvas id="canvas7"></canvas>    
            </div>
            <div id="hh"> 
                <canvas id="canvas8"></canvas>    
            </div>
            <div id="ii">
                <canvas id="canvas9"></canvas>    
            </div>
            <div id="jj">
                <canvas id="canvas10"></canvas>    
            </div>

             <div id="kk">
                <canvas id="canva1"></canvas>    
            </div>
             <div id="mm">
                <canvas id="canva2"></canvas>    
            </div>
             <div id="nn">
                <canvas id="canva3"></canvas>    
            </div>
             <div id="oo">
                <canvas id="canva4"></canvas>    
            </div>
             <div id="pp">
                <canvas id="canva5"></canvas>    
            </div>
             <div id="qq">
                <canvas id="canva6"></canvas>    
            </div>
            <div id="rr">
                <canvas id="canva7"></canvas>    
            </div>
            <div id="ss">
                <canvas id="canva8"></canvas>    
            </div>


         </div>
         
      </div>
      <!-- /tabs -->

 
    <div class="col-md-1"></div>
    </div>


</body>

</html>
   


<%End If%>