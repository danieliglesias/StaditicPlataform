<!--#include file="models.asp"-->

<% 
Response.CodePage = 65001 'UTF-8
Response.Charset = "UTF-8"
Response.ContentType = "application/json"
'la accion que define que hacer en el case de abajo
action = Request.QueryString("action") 'GET
file = Request.QueryString("file")


  
      Select Case action
        Case "eliminar"                
                result = eliminar(file) 
               
		Case Else
			message = "La petición no es válida"

	End Select
                
     


Response.Write(result)

%>