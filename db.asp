
<%
Function CANAL_MASIVO2()
Dim grafico
grafico = "CANMAS"
Set cmd = Server.CreateObject("ADODB.Command")
	With cmd
		.ActiveConnection = Pruebas_BD
		.CommandText = "WEB_COMITE_FIJO"
		.Parameters.Append .CreateParameter("@grafico", 200, 1, 10, ""&grafico)
		.CommandType = 4
		Set CANAL_MASIVO2 = .Execute
	End With
End Function

Function PORTABILIDAD2()
Dim grafico
grafico = "PORTAB"
Set cmd = Server.CreateObject("ADODB.Command")
	With cmd
		.ActiveConnection = Pruebas_BD
		.CommandText = "WEB_COMITE_FIJO"
		.Parameters.Append .CreateParameter("@grafico", 200, 1, 10, ""&grafico)
		.CommandType = 4
		Set PORTABILIDAD2 = .Execute
	End With
End Function

Function SEGMENTOPERSONA2()
Dim grafico
grafico = "SEGPER"
Set cmd = Server.CreateObject("ADODB.Command")
	With cmd
		.ActiveConnection = Pruebas_BD
		.CommandText = "WEB_COMITE_FIJO"
		.Parameters.Append .CreateParameter("@grafico", 200, 1, 10, ""&grafico)
		.CommandType = 4
		Set SEGMENTOPERSONA2 = .Execute
	End With
End Function 

Function ALTANORMALCLIENTENUEVO2()
Dim grafico
grafico = "ALNNUE"
Set cmd = Server.CreateObject("ADODB.Command")
	With cmd
		.ActiveConnection = Pruebas_BD
		.CommandText = "WEB_COMITE_FIJO"
		.Parameters.Append .CreateParameter("@grafico", 200, 1, 10, ""&grafico)
		.CommandType = 4
		Set ALTANORMALCLIENTENUEVO2 = .Execute
	End With
End Function

Function SEGMENTONEGOCIO2()
Dim grafico
grafico = "SEGNEG"
Set cmd = Server.CreateObject("ADODB.Command")
	With cmd
		.ActiveConnection = Pruebas_BD
		.CommandText = "WEB_COMITE_FIJO"
		.Parameters.Append .CreateParameter("@grafico", 200, 1, 10, ""&grafico)
		.CommandType = 4
		Set SEGMENTONEGOCIO2 = .Execute
	End With

End Function

Function ALTANORMALCLIENTEVIGENTE2()
Dim grafico
grafico = "ALNVIG"
Set cmd = Server.CreateObject("ADODB.Command")
	With cmd
		.ActiveConnection = Pruebas_BD
		.CommandText = "WEB_COMITE_FIJO"
		.Parameters.Append .CreateParameter("@grafico", 200, 1, 10, ""&grafico)
		.CommandType = 4
		Set ALTANORMALCLIENTEVIGENTE2 = .Execute
	End With
End Function

Function OPERACIONFIJA2()
Dim grafico
grafico = "OPENUE"
Set cmd = Server.CreateObject("ADODB.Command")
	With cmd
		.ActiveConnection = Pruebas_BD
		.CommandText = "WEB_COMITE_FIJO"
		.Parameters.Append .CreateParameter("@grafico", 200, 1, 10, ""&grafico)
		.CommandType = 4
		Set OPERACIONFIJA2 = .Execute
	End With
End Function

Function OPERACIONFIJA3()
Dim grafico
grafico = "OPEVIG"
Set cmd = Server.CreateObject("ADODB.Command")
	With cmd
		.ActiveConnection = Pruebas_BD
		.CommandText = "WEB_COMITE_FIJO"
		.Parameters.Append .CreateParameter("@grafico", 200, 1, 10, ""&grafico)
		.CommandType = 4
		Set OPERACIONFIJA3 = .Execute
	End With
End Function

Function SEGMENTONUEVOAUTOMICRO2()
Dim grafico
grafico = "SENAUT"
Set cmd = Server.CreateObject("ADODB.Command")
	With cmd
		.ActiveConnection = Pruebas_BD
		.CommandText = "WEB_COMITE_FIJO"
		.Parameters.Append .CreateParameter("@grafico", 200, 1, 10, ""&grafico)
		.CommandType = 4
		Set SEGMENTONUEVOAUTOMICRO2 = .Execute
	End With
End Function

Function SEGMENTONUEVOAUTOMICRO3()
Dim grafico
grafico = "SENMIC"
Set cmd = Server.CreateObject("ADODB.Command")
	With cmd
		.ActiveConnection = Pruebas_BD
		.CommandText = "WEB_COMITE_FIJO"
		.Parameters.Append .CreateParameter("@grafico", 200, 1, 10, ""&grafico)
		.CommandType = 4
		Set SEGMENTONUEVOAUTOMICRO3 = .Execute
	End With
End Function

Function TENENCIATRIO()
Dim grafico
grafico = "TRIO"
Set cmd = Server.CreateObject("ADODB.Command")
	With cmd
		.ActiveConnection = Pruebas_BD
		.CommandText = "WEB_COMITE_FIJO"
		.Parameters.Append .CreateParameter("@grafico", 200, 1, 10, ""&grafico)
		.CommandType = 4
		Set TENENCIATRIO = .Execute
	End With
End Function

Function TENENCIABATV()
Dim grafico
grafico = "BATV"
Set cmd = Server.CreateObject("ADODB.Command")
	With cmd
		.ActiveConnection = Pruebas_BD
		.CommandText = "WEB_COMITE_FIJO"
		.Parameters.Append .CreateParameter("@grafico", 200, 1, 10, ""&grafico)
		.CommandType = 4
		Set TENENCIABATV = .Execute
	End With
End Function

Function  TENENCIAADSL()
Dim grafico
grafico = "ADSL"
Set cmd = Server.CreateObject("ADODB.Command")
	With cmd
		.ActiveConnection = Pruebas_BD
		.CommandText = "WEB_COMITE_FIJO"
		.Parameters.Append .CreateParameter("@grafico", 200, 1, 10, ""&grafico)
		.CommandType = 4
		Set TENENCIAADSL = .Execute
	End With
End Function

Function  TENENCIABALN()
Dim grafico
grafico = "BALN"
Set cmd = Server.CreateObject("ADODB.Command")
	With cmd
		.ActiveConnection = Pruebas_BD
		.CommandText = "WEB_COMITE_FIJO"
		.Parameters.Append .CreateParameter("@grafico", 200, 1, 10, ""&grafico)
		.CommandType = 4
		Set TENENCIABALN = .Execute
	End With
End Function

Function  TENENCIADTH()
Dim grafico
grafico = "DTH"
Set cmd = Server.CreateObject("ADODB.Command")
	With cmd
		.ActiveConnection = Pruebas_BD
		.CommandText = "WEB_COMITE_FIJO"
		.Parameters.Append .CreateParameter("@grafico", 200, 1, 10, ""&grafico)
		.CommandType = 4
		Set TENENCIADTH = .Execute
	End With
End Function

Function  TENENCIASTB()
Dim grafico
grafico = "STB"
Set cmd = Server.CreateObject("ADODB.Command")
	With cmd
		.ActiveConnection = Pruebas_BD
		.CommandText = "WEB_COMITE_FIJO"
		.Parameters.Append .CreateParameter("@grafico", 200, 1, 10, ""&grafico)
		.CommandType = 4
		Set TENENCIASTB = .Execute
	End With
End Function

Function  TENENCIALNTV()
Dim grafico
grafico = "LNTV"
Set cmd = Server.CreateObject("ADODB.Command")
	With cmd
		.ActiveConnection = Pruebas_BD
		.CommandText = "WEB_COMITE_FIJO"
		.Parameters.Append .CreateParameter("@grafico", 200, 1, 10, ""&grafico)
		.CommandType = 4
		Set TENENCIALNTV = .Execute
	End With
End Function

Function PERSONANATURACONGIRO2()
Dim grafico
grafico = "ME50MI"
Set cmd = Server.CreateObject("ADODB.Command")
	With cmd
		.ActiveConnection = Pruebas_BD
		.CommandText = "WEB_COMITE_FIJO"
		.Parameters.Append .CreateParameter("@grafico", 200, 1, 10, ""&grafico)
		.CommandType = 4
		Set PERSONANATURACONGIRO2 = .Execute
	End With
End Function
Function PERSONANATURACONGIRO3()
Dim grafico
grafico = "MA50MI"
Set cmd = Server.CreateObject("ADODB.Command")
	With cmd
		.ActiveConnection = Pruebas_BD
		.CommandText = "WEB_COMITE_FIJO"
		.Parameters.Append .CreateParameter("@grafico", 200, 1, 10, ""&grafico)
		.CommandType = 4
		Set PERSONANATURACONGIRO3 = .Execute
	End With
End Function

Function CANALVENTA2()
Dim grafico
grafico = "CVFTER"
Set cmd = Server.CreateObject("ADODB.Command")
	With cmd
		.ActiveConnection = Pruebas_BD
		.CommandText = "WEB_COMITE_FIJO"
		.Parameters.Append .CreateParameter("@grafico", 200, 1, 10, ""&grafico)
		.CommandType = 4
		Set CANALVENTA2 = .Execute
	End With
End Function

Function CANALVENTA3()
Dim grafico
grafico = "CVCARE"
Set cmd = Server.CreateObject("ADODB.Command")
	With cmd
		.ActiveConnection = Pruebas_BD
		.CommandText = "WEB_COMITE_FIJO"
		.Parameters.Append .CreateParameter("@grafico", 200, 1, 10, ""&grafico)
		.CommandType = 4
		Set CANALVENTA3 = .Execute
	End With
End Function

Function CANALVENTA4()
Dim grafico
grafico = "CVPOVE"
Set cmd = Server.CreateObject("ADODB.Command")
	With cmd
		.ActiveConnection = Pruebas_BD
		.CommandText = "WEB_COMITE_FIJO"
		.Parameters.Append .CreateParameter("@grafico", 200, 1, 10, ""&grafico)
		.CommandType = 4
		Set CANALVENTA4 = .Execute
	End With
End Function

Function CANALVENTA5()
Dim grafico
grafico = "CVFAPR"
Set cmd = Server.CreateObject("ADODB.Command")
	With cmd
		.ActiveConnection = Pruebas_BD
		.CommandText = "WEB_COMITE_FIJO"
		.Parameters.Append .CreateParameter("@grafico", 200, 1, 10, ""&grafico)
		.CommandType = 4
		Set CANALVENTA5 = .Execute
	End With
End Function

Function SUBCANALVENTA2()
Dim grafico
grafico = "CRTERR"
Set cmd = Server.CreateObject("ADODB.Command")
	With cmd
		.ActiveConnection = Pruebas_BD
		.CommandText = "WEB_COMITE_FIJO"
		.Parameters.Append .CreateParameter("@grafico", 200, 1, 10, ""&grafico)
		.CommandType = 4
		Set SUBCANALVENTA2 = .Execute
	End With
End Function
Function SUBCANALVENTA3()
Dim grafico
grafico = "CROUHO"
Set cmd = Server.CreateObject("ADODB.Command")
	With cmd
		.ActiveConnection = Pruebas_BD
		.CommandText = "WEB_COMITE_FIJO"
		.Parameters.Append .CreateParameter("@grafico", 200, 1, 10, ""&grafico)
		.CommandType = 4
		Set SUBCANALVENTA3 = .Execute
	End With
End Function 
Function SUBCANALVENTA4()
Dim grafico
grafico = "CRINHO"
Set cmd = Server.CreateObject("ADODB.Command")
	With cmd
		.ActiveConnection = Pruebas_BD
		.CommandText = "WEB_COMITE_FIJO"
		.Parameters.Append .CreateParameter("@grafico", 200, 1, 10, ""&grafico)
		.CommandType = 4
		Set SUBCANALVENTA4 = .Execute
	End With
End Function 
Function SUBCANALVENTA5()
Dim grafico
grafico = "CRINTL"
Set cmd = Server.CreateObject("ADODB.Command")
	With cmd
		.ActiveConnection = Pruebas_BD
		.CommandText = "WEB_COMITE_FIJO"
		.Parameters.Append .CreateParameter("@grafico", 200, 1, 10, ""&grafico)
		.CommandType = 4
		Set SUBCANALVENTA5 = .Execute
	End With
End Function 
Function SUBCANALVENTA6()
Dim grafico
grafico = "CRINCO"
Set cmd = Server.CreateObject("ADODB.Command")
	With cmd
		.ActiveConnection = Pruebas_BD
		.CommandText = "WEB_COMITE_FIJO"
		.Parameters.Append .CreateParameter("@grafico", 200, 1, 10, ""&grafico)
		.CommandType = 4
		Set SUBCANALVENTA6 = .Execute
	End With
End Function 
Function SUBCANALVENTA7()
Dim grafico
grafico = "CRINNE"
Set cmd = Server.CreateObject("ADODB.Command")
	With cmd
		.ActiveConnection = Pruebas_BD
		.CommandText = "WEB_COMITE_FIJO"
		.Parameters.Append .CreateParameter("@grafico", 200, 1, 10, ""&grafico)
		.CommandType = 4
		Set SUBCANALVENTA7 = .Execute
	End With
End Function 
Function SUBCANALVENTA8()
Dim grafico
grafico = "CROUNE"
Set cmd = Server.CreateObject("ADODB.Command")
	With cmd
		.ActiveConnection = Pruebas_BD
		.CommandText = "WEB_COMITE_FIJO"
		.Parameters.Append .CreateParameter("@grafico", 200, 1, 10, ""&grafico)
		.CommandType = 4
		Set SUBCANALVENTA8 = .Execute
	End With
End Function

Function SUBCANALVENTA9()
Dim grafico
grafico = "CROUSE"
Set cmd = Server.CreateObject("ADODB.Command")
	With cmd
		.ActiveConnection = Pruebas_BD
		.CommandText = "WEB_COMITE_FIJO"
		.Parameters.Append .CreateParameter("@grafico", 200, 1, 10, ""&grafico)
		.CommandType = 4
		Set SUBCANALVENTA9 = .Execute
	End With
End Function

Function COMPCHURNTOTAL2()
Dim grafico
grafico = "COMCHU"
Set cmd = Server.CreateObject("ADODB.Command")
	With cmd
		.ActiveConnection = Pruebas_BD
		.CommandText = "WEB_COMITE_FIJO"
		.Parameters.Append .CreateParameter("@grafico", 200, 1, 10, ""&grafico)
		.CommandType = 4
		Set COMPCHURNTOTAL2 = .Execute
	End With
End Function 


%>