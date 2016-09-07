<!--#include file="models.asp"-->

<% 
Response.CodePage = 65001 'UTF-8
Response.Charset = "UTF-8"
Response.ContentType = "application/json"
'la accion que define que hacer en el case de abajo
action = Request.QueryString("action") 'GET
user = Request.QueryString("user")
pass = Request.QueryString("pass")

  
      Select Case action
        Case "CANAL_MASIVO"                
                result = CANAL_MASIVO()
        Case "PORTABILIDAD"
        		result = PORTABILIDAD()
       	Case "SEGMENTOPERSONA"
       			result = SEGMENTOPERSONA()
       	Case "ALTANORMALCLIENTENUEVO"
       			result = ALTANORMALCLIENTENUEVO()
       	Case "SEGMENTONEGOCIO"
       			result = SEGMENTONEGOCIO() 
       	Case "ALTANORMALCLIENTEVIGENTE"
       			result = ALTANORMALCLIENTEVIGENTE()
       	Case "OPERACIONFIJA"
       			result = OPERACIONFIJA()
       	Case "SEGMENTONUEVOAUTOMICRO"
       			result = SEGMENTONUEVOAUTOMICRO()
       	Case "TENENCIA"
       			result = TENENCIA()
       	Case "PERSONANATURACONGIRO"
       			result = PERSONANATURACONGIRO()
       	Case "CANALVENTA"
       			result = CANALVENTA()
       	Case "SUBCANALVENTA"
       			result = SUBCANALVENTA()
       	Case "COMPCHURNTOTAL"
       			result = COMPCHURNTOTAL()
        Case "LOGIN" 
            result = LOGIN(user,pass) 
    
		    Case Else
			   message = "La petición no es válida"

	End Select
                
     


Response.Write(result)

%>

