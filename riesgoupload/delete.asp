<%
dim fs
strFilePath = "C:\Users\sainvazl\Documents\My Web Sites\WebSite1\Download\" 
strFile = Request.QueryString("file") 
final = strFilePath & strFile
Set fs=Server.CreateObject("Scripting.FileSystemObject")
if fs.FileExists(final) then
  fs.DeleteFile(final)

end if
set fs=nothing
  Response.Redirect "http://localhost:8080/"

%>
