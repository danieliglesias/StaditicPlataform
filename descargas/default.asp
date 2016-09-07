<%@ Language=VBScript %>
<% 
option explicit 
Response.Expires = -1
Server.ScriptTimeout = 600
' All communication must be in UTF-8, including the response back from the request
Session.CodePage  = 65001
%>
<html>

<head>
    <title>Archivos</title>
        <meta charset="utf-8" />
      <meta charset="utf-8" />
    <link href="../css/bootstrap.css" rel="stylesheet" media="screen">
      <link href="../css/style.css" rel="stylesheet">
    <script src="../js/jquery.min.js"></script>
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
        <li><a id="nvars3" href="#">Reporte Recambios</a></li>
        <li  class="active"><a id="nvars4" href="#">Descarga Archivos</a></li>
      </ul>
    
      <ul class="nav navbar-nav navbar-right">
        <li><a href="#" data-toggle="modal" data-target="#myModallogin">Entrar</a></li>
     
      </ul>
    </div><!-- /.navbar-collapse -->
  </div><!-- /.container-fluid -->
</nav> 

<div class="container">




      <%
dim fs,fo,x,subFlds,modal,modaly
set fs=Server.CreateObject("Scripting.FileSystemObject")
'set fo=fs.GetFolder("R:\wwwroot\riesgoupload\Download")
set fo=fs.GetFolder("C:\inetpub\wwwroot\descargas\Download")
Set subFlds = fo.SubFolders

for each x in subFlds

  modal = modal + 1
  modaly = "myModal"&modal
  'Print the name of all files in the test folder
  Response.write("<div class=""img""><a href=""#"" class="&modaly&" data-toggle=""modal"" data-target="&modaly&" data-id= "&x.Name&"><img src=""../img/folder_256.png"" alt=""Fjords""></a><br/><div class=""desc"">"&x.Name&"</div></div>" )

next

set fo=nothing
set fs=nothing

      '<figure>
       ' <img src="http://placehold.it/100?text=IMG" alt="">
        '<figcaption>Hello</figcaption>
      '</figure>
%>

</div><!--FIN CONTAINER-->




<div class="modal fade" id="myModallogin" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
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

<div class="modal fade" id="myModal1" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="myModalLabel" style="" id="carpetaname2"></h4>
      </div>
      <div class="modal-body">
        <div class="panel panel-default">
        <div class="panel-heading">Bases Morosidad y Bajas</div>
        <div class="panel-body">
          
          <%
            set fs=Server.CreateObject("Scripting.FileSystemObject")
            set fo=fs.GetFolder("C:\inetpub\wwwroot\descargas\Download\Bases Morosidad y Bajas\")
            Response.write( "<div class=""list-group""> ")
            for each x in fo.files
              Response.write("<a href=""#"" class=""list-group-item"" data-date="& x.DateCreated &" data-size="& x.Size/100000 &" data-name="& x.Name &" data-toggle=""modal"" data-target=""#myModalDescarga"" data-folder=""1"">"& x.Name &"</a><br>" )
            next
            Response.write( "</div>")
            set fo=nothing
            set fs=nothing 


          %>
        </div>
        </div>
      </div>
      <div class="modal-footer">
      <button type="button" class="btn btn-default" data-dismiss="modal">Cerrar</button>
      </div>
    </div>
  </div>
</div>

<div class="modal fade" id="myModal2" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="myModalLabel" style="" id="carpetaname2"></h4>
      </div>
      <div class="modal-body">
        <div class="panel panel-default">
        <div class="panel-heading">Campañas</div>
        <div class="panel-body">
          
          <%
            set fs=Server.CreateObject("Scripting.FileSystemObject")
            set fo=fs.GetFolder("C:\inetpub\wwwroot\descargas\Download\Campañas\")
            Response.write( "<div class=""list-group""> ")
            for each x in fo.files
              Response.write("<a href=""#"" class=""list-group-item"" data-date="& x.DateCreated &" data-size="& x.Size/100000 &" data-name="& x.Name &" data-toggle=""modal"" data-target=""#myModalDescarga"" data-folder=""1"">"& x.Name &"</a><br>" )
            next
            Response.write( "</div>")
            set fo=nothing
            set fs=nothing 
          %>
        </div>
        </div>
      </div>
      <div class="modal-footer">
      <button type="button" class="btn btn-default" data-dismiss="modal">Cerrar</button>
      </div>
    </div>
  </div>
</div>

<div class="modal fade" id="myModal3" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="myModalLabel" style="" id="carpetaname2"></h4>
      </div>
      <div class="modal-body">
        <div class="panel panel-default">
        <div class="panel-heading">Comites</div>
        <div class="panel-body">
          
          <%
            set fs=Server.CreateObject("Scripting.FileSystemObject")
            set fo=fs.GetFolder("C:\inetpub\wwwroot\descargas\Download\Comites\")
            Response.write( "<div class=""list-group""> ")
            for each x in fo.files
              Response.write("<a href=""#"" class=""list-group-item"" data-date="& x.DateCreated &" data-size="& x.Size/100000 &" data-name="& x.Name &">"& x.Name &"</a><br>" )
            next
            Response.write( "</div>")
            set fo=nothing
            set fs=nothing 
          %>
        </div>
        </div>
      </div>
      <div class="modal-footer">
      <button type="button" class="btn btn-default" data-dismiss="modal">Cerrar</button>
      </div>
    </div>
  </div>
</div>

<div class="modal fade" id="myModal4" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="myModalLabel" style="" id="carpetaname2"></h4>
      </div>
      <div class="modal-body">
        <div class="panel panel-default">
        <div class="panel-heading">Otros</div>
        <div class="panel-body">

          <%
            set fs=Server.CreateObject("Scripting.FileSystemObject")
            set fo=fs.GetFolder("C:\inetpub\wwwroot\descargas\Download\Otros\")
            Response.write( "<div class=""list-group""> ")
            for each x in fo.files
              Response.write("<a href=""#"" class=""list-group-item"" data-date="& x.DateCreated &" data-size="& x.Size/100000 &" data-name="& x.Name &">"& x.Name &"</a><br>" )
            next
            Response.write( "</div>")
            set fo=nothing
            set fs=nothing 
          %>
        </div>
        </div>
      </div>
      <div class="modal-footer">
      <button type="button" class="btn btn-default" data-dismiss="modal">Cerrar</button>
      </div>
    </div>
  </div>
</div>
<div class="modal fade" id="myModal5" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="myModalLabel" style="" id="carpetaname2"></h4>
      </div>
      <div class="modal-body">
        <div class="panel panel-default">
        <div class="panel-heading">Reporte</div>
        <div class="panel-body">
          
          <%
            set fs=Server.CreateObject("Scripting.FileSystemObject")
            set fo=fs.GetFolder("C:\inetpub\wwwroot\descargas\Download\Reporte\")
            Response.write( "<div class=""list-group""> ")
            for each x in fo.files
              Response.write("<a href=""#"" class=""list-group-item"" data-date="& x.DateCreated &" data-size="& x.Size/100000 &" data-name="& x.Name &">"& x.Name &"</a><br>" )
            next
            Response.write( "</div>")
            set fo=nothing
            set fs=nothing 
          %>
        </div>
        </div>
      </div>
      <div class="modal-footer">
      <button type="button" class="btn btn-default" data-dismiss="modal">Cerrar</button>
      </div>
    </div>
  </div>
</div>


<div class="modal fade" id="myModalDescarga" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="myModalLabel">Modal title</h4>
      </div>
      <div class="modal-body">


    <label for="sizes">Nombre:</label>
    <p  id="nom"></p>
<label for="sizes">Tamaño:</label>
    <p  id="sizes"></p>
<label for="dates">Fecha:</label>
    <p id="dates"></p>               

        
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Cerrar</button>
        <a type="button" id="descarga"class="btn btn-primary" download>Descargar</a>
      </div>
    </div>
  </div>
</div>
    
</body>

</html>
