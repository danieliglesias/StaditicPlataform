<%
const adTypeBinary = 1
dim strFilePath, strFile

strFilePath = "C:\Users\sainvazl\Documents\My Web Sites\WebSite1\Download\" 
strFile = Request.QueryString("file") 

if strFile <> "" then
    'Set the content type to the specific type that you are sending.
     Response.ContentType = "application/octet-stream"
     Response.AddHeader "Content-Disposition", "attachment; filename=" & strFile

     set objStream = Server.CreateObject("ADODB.Stream")
     objStream.open
     objStream.type = adTypeBinary
     objStream.LoadFromFile(strFilePath & strFile)

    response.binarywrite objStream.Read

    objStream.close
    Set objStream = nothing

end if
%>