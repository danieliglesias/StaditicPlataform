<!--#include file="models.asp"-->

<% 
Response.CodePage = 65001 'UTF-8
Response.Charset = "UTF-8"
Response.ContentType = "application/json"
'la accion que define que hacer en el case de abajo
action = Request.QueryString("action") 'GET
zona = Request.QueryString("zona") 'GET
zona2 = Request.QueryString("zona2") 'GET


  
      Select Case action
        Case "datos"                
                result = datos()  
        Case "cargarMovilN3"
                result = cargarmovil()
                
        Case "filtrozona"
                result =  filtroZona(zona) 
        Case "cargarGrafico"
                result = cargarGrafico()
          Case "cargarGrafico2"
                result = cargarGrafico2()                      
        Case "dtinformeriesgomega"
                result = dt_informe_mega() 
        Case "dtper"
                result = dt_informe_per()  
        Case "cargarFijaN3"
                result = cargarfija() 
        Case "filtrozonafijo"
                result = filtrozonaFijo(zona2)               
		Case Else
			message = "La petición no es válida"

	End Select
                
     


Response.Write(result)

%>

