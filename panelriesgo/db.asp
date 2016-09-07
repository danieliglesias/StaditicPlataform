
<%
Function dato()
Set cmd = Server.CreateObject("ADODB.Command")
	With cmd
		.ActiveConnection = Pruebas_BD
		.CommandText = "SP_TESTRIESGO"
		.CommandType = 4
		Set dato = .Execute
	End With

End Function

Function cargarFijaN3()
Set cmd = Server.CreateObject("ADODB.Command")
	With cmd
		.ActiveConnection = Pruebas_BD
		.CommandText = "WEB_FIJOFOCON3"
		.CommandType = 4
		Set cargarFijaN3 = .Execute
	End With
End Function

Function cargarFijaN32()
Set cmd = Server.CreateObject("ADODB.Command")
	With cmd
		.ActiveConnection = Pruebas_BD
		.CommandText = "WEB_FIJOFOCON32"
		.CommandType = 4
		Set cargarFijaN32 = .Execute
	End With
End Function

Function cargarMovilN3()
Set cmd = Server.CreateObject("ADODB.Command")
	With cmd
		.ActiveConnection = Pruebas_BD
		.CommandText = "WEB_MOVILFOCON3"
		.CommandType = 4
		Set cargarMovilN3 = .Execute
	End With
End Function

Function cargarMovilN32()
Set cmd = Server.CreateObject("ADODB.Command")
	With cmd
		.ActiveConnection = Pruebas_BD
		.CommandText = "WEB_MOVILFOCON32"
		.CommandType = 4
		Set cargarMovilN32 = .Execute
	End With
End Function

Function Filtrozona2(zona)
Set cmd = Server.CreateObject("ADODB.Command")
	With cmd
		.ActiveConnection = Pruebas_BD
		.CommandText = "WEB_FILTROZONA"
        .Parameters.Append .CreateParameter("@zona", 200, 1, 20, ""&zona)
		.CommandType = 4
		Set Filtrozona2 = .Execute
	End With
End Function

Function filtrozonaFijos(zona2)
Set cmd = Server.CreateObject("ADODB.Command")
	With cmd
		.ActiveConnection = Pruebas_BD
		.CommandText = "WEB_FILTROZONA3"
        .Parameters.Append .CreateParameter("@zona", 200, 1, 20, ""&zona2)
		.CommandType = 4
		Set filtrozonaFijos = .Execute
	End With
End Function


Function filtrozonaFijo2(zona2)
Set cmd = Server.CreateObject("ADODB.Command")
	With cmd
		.ActiveConnection = Pruebas_BD
		.CommandText = "WEB_FILTROZONA4"
        .Parameters.Append .CreateParameter("@zona", 200, 1, 20, ""&zona2)
		.CommandType = 4
		Set filtrozonaFijo2 = .Execute
	End With
End Function 
 

Function Filtrozona3(zona)
Set cmd = Server.CreateObject("ADODB.Command")
	With cmd
		.ActiveConnection = Pruebas_BD
		.CommandText = "WEB_FILTROZONA2"
        .Parameters.Append .CreateParameter("@zona", 200, 1, 20, ""&zona)
		.CommandType = 4
		Set Filtrozona3 = .Execute
	End With
End Function

Function cargar_Total()
Set cmd = Server.CreateObject("ADODB.Command")
	With cmd
		.ActiveConnection = Pruebas_BD
		.CommandText = "WEB_REGIONTOTAL"
		.CommandType = 4
		Set cargar_Total = .Execute
	End With
End Function

Function cargar_Totalfijo()
Set cmd = Server.CreateObject("ADODB.Command")
	With cmd
		.ActiveConnection = Pruebas_BD
		.CommandText = "WEB_REGIONTOTAL2"
		.CommandType = 4
		Set cargar_Totalfijo = .Execute
	End With
End Function

Function dt_informe_mega_monitoreo()
Set cmd = Server.CreateObject("ADODB.Command")
	With cmd
		.ActiveConnection = Pruebas_BD
		.CommandText = "WEB_MONITOREO_DT_MEGA"
		.CommandType = 4
		Set dt_informe_mega_monitoreo = .Execute
	End With
End Function

Function dt_informe_per_monitoreo()
Set cmd = Server.CreateObject("ADODB.Command")
	With cmd
		.ActiveConnection = Pruebas_BD
		.CommandText = "WEB_MONITOREO_DT_PER"
		.CommandType = 4
		Set dt_informe_per_monitoreo = .Execute
	End With
End Function  
%>