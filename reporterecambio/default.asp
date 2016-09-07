
<!doctype html>
<html>

<head>
    <title>RIESGO COMERCIAL</title>
     <meta charset="utf-8" />
    <link href="../css/bootstrap.css" rel="stylesheet" media="screen">
      <link href="../css/style.css" rel="stylesheet">
    <script src="http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
     <script src="../js/bootstrap.min.js"></script>
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
        <li><a id="nvars" href="#">Comite WEB</a></li>
        <li><a id="nvars2" href="#">Panel Regional</a></li>
        <li class="active"><a id="nvars3" href="#">Reporte Recambios</a></li>
        <li><a id="nvars4" href="#">Descarga Archivos</a></li>
      </ul>
    
      <ul class="nav navbar-nav navbar-right">
        <li><a href="#" data-toggle="modal" data-target="#myModal">Entrar</a></li>
     
      </ul>
    </div><!-- /.navbar-collapse -->
  </div><!-- /.container-fluid -->
</nav>

      <div class="container">
<div class="row">
<div class="col-md-1"></div>
<div class="col-md-10">               
<div class="panel panel-default">
<div class="panel-body"><h3>RECAMBIO MOVISTAR ONE</h3></div>
<div class="panel-footer"><div id="tablarecambio"></div>
</div>                                             
</div>       
</div>
<div class="col-md-1"></div>
</div>

<div class="row">
<div class="col-md-1"></div>
<div class="col-md-10">               
<div class="panel panel-default">
<div class="panel-body"><h3>RECAMBIO MOVISTAR MIXTO</h3></div>
<div class="panel-footer"><div id="tablamixto"></div>
</div>                                             
</div>       
</div>
<div class="col-md-1"></div>
</div>

<div class="row">
<div class="col-md-1"></div>
<div class="col-md-10">               
<div class="panel panel-default">
<div class="panel-body"><h3>RECAMBIO MOVISTAR ICONICS</h3></div>
<div class="panel-footer"><div id="tablaiconic"></div>
</div>                                             
</div>       
</div>
<div class="col-md-1"></div>
</div>


          
<div class="row">
<div class="col-md-1"></div>
<div class="col-md-10">               
<div class="panel panel-default">
<div class="panel-body"><h3>RECAMBIO MOVISTAR NORMAL</h3></div>
<div class="panel-footer"><div id="tablanormal"></div>
</div>                                             
</div>       
</div>
<div class="col-md-1"></div>
</div>

        
  </div>   
</body>



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
  <input type="password" class="form-control" id="InputPassword1" placeholder="Constraseña">
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
</html>
