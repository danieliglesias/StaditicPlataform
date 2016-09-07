
<%
Function dataRecambio2()
Set cmd = Server.CreateObject("ADODB.Command")
	With cmd
		.ActiveConnection = Pruebas_BD
		.CommandText = "WEB_RECAMBIO_BAJAS"
		.CommandType = 4
		Set dataRecambio2 = .Execute
	End With
End Function

Function datarecambiomixto2()
Set cmd = Server.CreateObject("ADODB.Command")
	With cmd
		.ActiveConnection = Pruebas_BD
		.CommandText = "WEB_RECAMBIO_MIXTO"
		.CommandType = 4
		Set datarecambiomixto2 = .Execute
	End With
End Function 

Function datarecambioiconic2()
Set cmd = Server.CreateObject("ADODB.Command")
	With cmd
		.ActiveConnection = Pruebas_BD
		.CommandText = "WEB_RECAMBIO_ICONIC"
		.CommandType = 4
		Set datarecambioiconic2 = .Execute
	End With
End Function

Function datarecambionormal2()
Set cmd = Server.CreateObject("ADODB.Command")
	With cmd
		.ActiveConnection = Pruebas_BD
		.CommandText = "WEB_RECAMBIO_NORMAL"
		.CommandType = 4
		Set datarecambionormal2 = .Execute
	End With
End Function


%>