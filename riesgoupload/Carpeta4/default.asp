<%@ Language=VBScript %>
<% 
Response.Expires = -1
Server.ScriptTimeout = 600
' All communication must be in UTF-8, including the response back from the request
Session.CodePage  = 65001


%>
<!-- #include file="../freeaspupload.asp" -->
<%


  ' ****************************************************
  ' Change the value of the variable below to the pathname
  ' of a directory with write permissions, for example "C:\Inetpub\wwwroot"
  ' ****************************************************

  Dim uploadsDirVar
   uploadsDirVar = "C:\inetpub\wwwroot\descargas\Download\Reporte\" 
  

  ' Note: this file uploadTester.asp is just an example to demonstrate
  ' the capabilities of the freeASPUpload.asp class. There are no plans
  ' to add any new features to uploadTester.asp itself. Feel free to add
  ' your own code. If you are building a content management system, you
  ' may also want to consider this script: http://www.webfilebrowser.com/

function OutputForm()
%>
    <form class="form-horizontal" name="frmSend" method="POST" enctype="multipart/form-data" accept-charset="utf-8" action="#" onSubmit="return onSubmitForm();">
	<label for="file">Adjuntar Archivo:</label>
    <input class="file" id="file"name="attach1" type="file" size=35></input><br>
          <input class="btn-primary btn-md"style="margin-top:4" id="subir" type=submit value="SUBIR">
    </form>
<%
end function

function TestEnvironment()
    Dim fso, fileName, testFile, streamTest
    TestEnvironment = ""
    Set fso = Server.CreateObject("Scripting.FileSystemObject")
    if not fso.FolderExists(uploadsDirVar) then
        TestEnvironment = "<B>Folder " & uploadsDirVar & " does not exist.</B><br>The value of your uploadsDirVar is incorrect. Open uploadTester.asp in an editor and change the value of uploadsDirVar to the pathname of a directory with write permissions."
        exit function
    end if
    fileName = uploadsDirVar & "\test.txt"
    on error resume next
    Set testFile = fso.CreateTextFile(fileName, true)
    If Err.Number<>0 then
        TestEnvironment = "<B>Folder " & uploadsDirVar & " does not have write permissions.</B><br>The value of your uploadsDirVar is incorrect. Open uploadTester.asp in an editor and change the value of uploadsDirVar to the pathname of a directory with write permissions."
        exit function
    end if
    Err.Clear
    testFile.Close
    fso.DeleteFile(fileName)
    If Err.Number<>0 then
        TestEnvironment = "<B>Folder " & uploadsDirVar & " does not have delete permissions</B>, although it does have write permissions.<br>Change the permissions for IUSR_<I>computername</I> on this folder."
        exit function
    end if
    Err.Clear
    Set streamTest = Server.CreateObject("ADODB.Stream")
    If Err.Number<>0 then
        TestEnvironment = "<B>The ADODB object <I>Stream</I> is not available in your server.</B><br>Check the Requirements page for information about upgrading your ADODB libraries."
        exit function
    end if
    Set streamTest = Nothing
end function

function SaveFiles
    Dim Upload, fileName, fileSize, ks, i, fileKey

    Set Upload = New FreeASPUpload
    Upload.Save(uploadsDirVar)

	' If something fails inside the script, but the exception is handled
	If Err.Number<>0 then Exit function

    SaveFiles = ""
    ks = Upload.UploadedFiles.keys
    if (UBound(ks) <> -1) then
        SaveFiles = "<B>Files uploaded:</B> "
        for each fileKey in Upload.UploadedFiles.keys
            SaveFiles = SaveFiles & Upload.UploadedFiles(fileKey).FileName & " (" & Upload.UploadedFiles(fileKey).Length & "B) "


        next
     
    else
        SaveFiles = "No file selected for upload or the file name specified in the upload form does not correspond to a valid file in the system."
    end if

end function
%>



<html>

<head>
    <title>Archivos</title>
        <meta charset="utf-8" />
    <link href="../../css/bootstrap.css" rel="stylesheet" media="screen">
      <link href="../../css/style.css" rel="stylesheet">
    <script src="http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
     <script src="../../js/bootstrap.min.js"></script>
    <script type="../../text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
    <script src="../../js/Chart.bundle.js"></script>
   <script src="../js/Script.js"></script>
    
    
    <style>
    canvas{
        -moz-user-select: none;
        -webkit-user-select: none;
        -ms-user-select: none;
    }
    </style>
    <script>
function onSubmitForm() {
    var formDOMObj = document.frmSend;
    if (formDOMObj.attach1.value == "" && formDOMObj.attach2.value == "" && formDOMObj.attach3.value == "" && formDOMObj.attach4.value == "" )
        alert("Please press the Browse button and pick a file.")
    else
        return true;
    return false;
}
</script>
</head>

<body>
  <div class="row">
      
                <div id="header"><img style="width: 250px; height:90px; margin-left:20px;" alt="Brand" src=" ../../img/company_logo.png"></div>

    </div>

    
     
<nav class="navbar navbar-default">
  <div class="container-fluid">
    <!-- Brand and toggle get grouped for better mobile display -->
    <div class="navbar-header">
   
       <a class="navbar-brand" href="#">
        <img style="width: 40px; height:40px;"" alt="Brand" src="../../img/home_icon.png">
      </a>
    </div>

    <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
      <ul class="nav navbar-nav">
            <li><a id="nvars" href="#">Bases Morosidad y Bajas</a></li>
        <li><a id="nvars1" href="#">Campañas</a></li>
        <li><a id="nvars2" href="#">Comites</a></li>
        <li><a id="nvars3" href="#">Otros</a></li>
        <li class="active"><a id="nvars4" href="#">Reporte</a></li>
      </ul>
    
      <ul class="nav navbar-nav navbar-right">
       <li><a href="../../logout.asp" id="logout">Cerrar sesion</a></li>
     
      </ul>
    </div><!-- /.navbar-collapse -->
  </div><!-- /.container-fluid -->
</nav>


<div class="container">
  <div class="row" id="tabdescarga">
  <div class="col-md-1"></div>
  <div class="col-md-5">
    <div class="panel panel-default">
    <div class="panel-heading">Subir Archivo</div>
    <div class="panel-body">
      <%
     
      Dim diagnostics
      if Request.ServerVariables("REQUEST_METHOD") <> "POST" then
      diagnostics = TestEnvironment()
      if diagnostics<>"" then
        response.write "<div style=""margin-left:20; margin-top:30; margin-right:30; margin-bottom:30;"">"
        response.write diagnostics
        response.write "<p>After you correct this problem, reload the page."
        response.write "</div>"
      else
        response.write "<div style=""margin-left:50"">"
        OutputForm()
        response.write "</div>"
      end if
      else
        response.write "<div style=""margin-left:5"">"
        OutputForm()
        response.write SaveFiles()
        response.write "<br><br></div>"
      end if
      %>
    </div>
    </div>
  </div>
  <div class="col-md-5">
    <div class="panel panel-default">
    <div class="panel-heading">Archivos Disponibles</div>
    <div class="panel-body">
      <%
      set fs=Server.CreateObject("Scripting.FileSystemObject")
      set fo=fs.GetFolder("C:\inetpub\wwwroot\descargas\Download\Reporte\")
      Response.write( "<div class=""list-group""> ")
      for each x in fo.files
      'Print the name of all files in the test folder
      Response.write("<a href=""#"" class=""list-group-item"" data-date="& x.DateCreated &" data-size="& x.Size/100000 &" data-name="& x.Name &" data-toggle=""modal"" data-target=""#myModal"">"& x.Name &" "& x.Size/100000  &"</a><br>" )
      next
      Response.write( "</div>")
      set fo=nothing
      set fs=nothing
      %>
    </div>
    </div> 
  </div>
  <div class="col-md-1"></div>
  </div><!--FINROW-->
</div>


      
</div><!--FIN CONTAINER-->
<!-- Modal -->
</body>
</html>


