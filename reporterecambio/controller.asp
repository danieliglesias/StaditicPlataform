<!--#include file="models.asp"-->

<% 
Response.CodePage = 65001 'UTF-8
Response.Charset = "UTF-8"
Response.ContentType = "application/json"
'la accion que define que hacer en el case de abajo
action = Request.QueryString("action") 'GET



Select Case action
  Case "data"
   result =  datarecambio()
    Case "mixto"
    result = datarecambiomixto()
    Case "iconic"
    result = datarecambioiconic()
    Case "NORMAL"
    result = datarecambionormal()
  Case else
   message = "La petición no es válida"
End Select
                
     Response.Write(result)




%>

