
<!doctype html>
<html>

<head>
    <title>RIESGO COMERCIAL</title>
     <meta charset="utf-8" />
    <link href="../css/bootstrap.css" rel="stylesheet" media="screen">
      <link href="../css/style.css" rel="stylesheet">
    <script src="http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
     <script src="../js/bootstrap.min.js"></script>
    <script type="../text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
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
        <li class="active"><a id="nvars2" href="#">Panel Regional</a></li>
        <li><a id="nvars3" href="#">Reporte Recambios</a></li>
        <li><a id="nvars4" href="#">Descarga Archivos</a></li>
      </ul>
    
      <ul class="nav navbar-nav navbar-right">
        <li><a href="#" data-toggle="modal" data-target="#myModal">Entrar</a></li>
     
      </ul>
    </div><!-- /.navbar-collapse -->
  </div><!-- /.container-fluid -->
</nav>

<div class="container">
    <div class="col-md-1"></div>
        <div class="col-md-10"> 

  <ul id="myTab"class="nav nav-tabs" role="tablist">
    <li role="presentation" class="active"><a href="#home" aria-controls="home" role="tab" data-toggle="tab">MOVIL</a></li>
    <li role="presentation"><a id="fijo" href="#profile" aria-controls="profile" role="tab" data-toggle="tab">FIJO</a></li>
    <li role="presentation"><a href="#messages" style=" display:none" aria-controls="messages" role="tab" data-toggle="tab">OTRO 1</a></li>
    <li role="presentation"><a id="monitor" style=" display:none" href="#settings"aria-controls="settings" role="tab" data-toggle="tab">MONITOREO</a></li>
  </ul>
      </div>
    <div class="col-md-1"></div>
</div>

<div id="loading"></div>
  <div id="page"class="tab-content">
      <!-- MOVIL -->
<div role="tabpanel" class="tab-pane active" id="home">
    <div class="row">
        <div class="col-md-4"></div>
            <div class="col-md-1"> <label for="zona">ZONA: </label> </div>
        <div class="col-md-2">    
        <select class="form-control" id="zona">
            <option value="T">TOTAL</option>
            <option value="C">CENTRO</option>
            <option value="N">NORTE</option>
            <option value="S">SUR</option>
        </select>
        </div>
        <div class="col-md-5"></div>
    </div>                      
    <div class="row">
        <div class="col-md-2"></div>
        <div class="col-md-8">
            <div class="panel panel-default">
            <!-- Default panel contents -->
            <div class="panel-body">
                <div class="row" id="canvassize">
                    <canvas id="canvas"></canvas>   
                </div>
            </div> 
            </div>        
        </div>
        <div class="col-md-2"></div>
    </div>
    <div class="row">
        <div class="col-md-6">
            <h3 style="text-align: center">TOP 20 MENOR MOROSIDAD</h3>
            <div id="tabla_movil"></div>
        </div>
        <div class="col-md-6">
            <h3 style="text-align: center">TOP 20 MAYOR MOROSIDAD</h3>
            <div id="tabla_movil2"></div>
        </div>
    </div>
</div>

  <!-- FIJO -->
<div role="tabpanel" class="tab-pane" id="profile">
    <div class="row">
        <div class="col-md-4"></div>
            <div class="col-md-1"> <label for="zona2">ZONA: </label> </div>
        <div class="col-md-2">    
        <select class="form-control" id="zona2">
            <option value="T">TOTAL</option>
            <option value="C">CENTRO</option>
            <option value="N">NORTE</option>
            <option value="S">SUR</option>
        </select>
        </div>
        <div class="col-md-5"></div>
    </div>                      
    <div class="row">
        <div class="col-md-2"></div>
        <div class="col-md-8">
            <div class="panel panel-default">
            <!-- Default panel contents -->
            <div class="panel-body">
                <div class="row">
                    <canvas id="canvas2"></canvas>   
                </div>
            </div> 
            </div>        
        </div>
        <div class="col-md-2"></div>
    </div>
    <div class="row">
        <div class="col-md-6">
            <h3 style="text-align: center">TOP 20 MENOR MOROSIDAD</h3>
            <div id="tabla_fija"></div>
        </div>
        <div class="col-md-6">
            <h3 style="text-align: center">TOP 20 MAYOR MOROSIDAD</h3>
            <div id="tabla_fija2"></div>
        </div>
    </div>   
</div>


    <div role="tabpanel" class="tab-pane" id="messages">...</div>
    <div role="tabpanel" class="tab-pane" id="settings">
    <div class="container">
        <div class="col-md-1"></div>
        <div class="col-md-10">   
            
            <h1 style="text-align: center">MONITOREO BASE</h1>
              <div class="row">
                    <div class="col-md-4">
              <h4 style="text-align: center">DT_INFORME_RIESGO_MEGA</h4>
              <div id="MEGAS"></div>
              </div>
                    <div class="col-md-4">
              <h4 style="text-align: center">DT_PER</h4>
              <div id="DTPER"></div>
              </div> 
                    <div class="col-md-4">
              
              </div>  
                  </div>   
              

          
        </div>
        <div class="col-md-1"></div>
    </div>
    </div>
  </div>



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
  <input type="password" class="form-control" id="InputPassword1" placeholder="Contraseña">
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


    
</body>

</html>
