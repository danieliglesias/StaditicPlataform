<!--#include file="../assets/aspJSON/1.17/aspJSON.asp"-->
<!--#include file="../assets/helpers.asp"-->
<!--#include file="conection.asp"-->
<!--#include file="db.asp"-->
<%
Function eliminar(file)
Set oJSON = New aspJSON
	'On Error Resume Next
	Pruebas_BD.Open()
	If Err.Number = 0 Then
				
	eliminars(file)
				


			
			oJSON.data("success") = True
		
	Else
		message = "Ocurrió un error. Intenta nuevamente"
	End If
	If message <> "" Then
		oJSON.data("success") = False
		oJSON.data("reason") = message
	End If
	eliminar = oJSON.JSONoutput()
	Pruebas_BD.Close()




End Function  
%>