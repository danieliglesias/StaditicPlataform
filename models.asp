<!--#include file="assets/aspJSON/1.17/aspJSON.asp"-->
<!--#include file="assets/helpers.asp"-->
<!--#include file="conection.asp"-->
<!--#include file="db.asp"-->
<%
Function LOGIN(user,pass)

Set oJSON = New aspJSON
	'On Error Resume Next

	
				
				if user = "riesgo" and pass = "riesgo2016" then
					oJSON.data("success") = True
					Session("usuario")="riesgo"
					
				else 
					message = "Ocurrió un error. Intenta nuevamente"

				End If 
			
	If message <> "" Then
		oJSON.data("success") = False
		oJSON.data("reason") = message
	End If
	LOGIN = oJSON.JSONoutput()
End Function


Function CANAL_MASIVO()
Set oJSON = New aspJSON
	'On Error Resume Next
	Pruebas_BD.Open()
	If Err.Number = 0 Then
				
				Set rs = CANAL_MASIVO2()
				If Not rs.Eof Then
					Set oJSON.data("MASIVO") = oJSON.Collection()
					Do While Not rs.Eof
						mes = rs("MES_ALTA")
                        alta = rs("ALTAS")
                        n3 = rs("N3")
                                                                                						
						Set typeItem = oJSON.AddToCollection(oJSON.data("MASIVO"))
						typeItem.add "MES_ALTA", mes
						typeItem.add "ALTAS", alta
                        typeItem.add "N3", n3                                                              
						rs.MoveNext
					Loop
				End If
              			
			oJSON.data("success") = True
		
	Else
		message = "Ocurrió un error. Intenta nuevamente"
	End If
	If message <> "" Then
		oJSON.data("success") = False
		oJSON.data("reason") = message
	End If
	CANAL_MASIVO = oJSON.JSONoutput()
	Pruebas_BD.Close()
End Function 


Function PORTABILIDAD()
Set oJSON = New aspJSON
	'On Error Resume Next
	Pruebas_BD.Open()
	If Err.Number = 0 Then
				
				Set rs = PORTABILIDAD2()
				If Not rs.Eof Then
					Set oJSON.data("PORTABILIDAD") = oJSON.Collection()
					Do While Not rs.Eof
						mes = rs("MES_ALTA")
                        alta = rs("ALTAS")
                        n3 = rs("N3")
                                                                                						
						Set typeItem = oJSON.AddToCollection(oJSON.data("PORTABILIDAD"))
						typeItem.add "MES_ALTA", mes
						typeItem.add "ALTAS", alta
                        typeItem.add "N3", n3                                                              
						rs.MoveNext
					Loop
				End If
              			
			oJSON.data("success") = True
		
	Else
		message = "Ocurrió un error. Intenta nuevamente"
	End If
	If message <> "" Then
		oJSON.data("success") = False
		oJSON.data("reason") = message
	End If
	PORTABILIDAD = oJSON.JSONoutput()
	Pruebas_BD.Close()
End Function

Function SEGMENTOPERSONA()

Set oJSON = New aspJSON
	'On Error Resume Next
	Pruebas_BD.Open()
	If Err.Number = 0 Then
				
				Set rs = SEGMENTOPERSONA2()
				If Not rs.Eof Then
					Set oJSON.data("SEGPER") = oJSON.Collection()
					Do While Not rs.Eof
						mes = rs("MES_ALTA")
                        alta = rs("ALTAS")
                        n3 = rs("N3")
                                                                                						
						Set typeItem = oJSON.AddToCollection(oJSON.data("SEGPER"))
						typeItem.add "MES_ALTA", mes
						typeItem.add "ALTAS", alta
                        typeItem.add "N3", n3                                                              
						rs.MoveNext
					Loop
				End If
              			
			oJSON.data("success") = True
		
	Else
		message = "Ocurrió un error. Intenta nuevamente"
	End If
	If message <> "" Then
		oJSON.data("success") = False
		oJSON.data("reason") = message
	End If
	SEGMENTOPERSONA = oJSON.JSONoutput()
	Pruebas_BD.Close()
End Function

Function ALTANORMALCLIENTENUEVO()

Set oJSON = New aspJSON
	'On Error Resume Next
	Pruebas_BD.Open()
	If Err.Number = 0 Then
				
				Set rs = ALTANORMALCLIENTENUEVO2()
				If Not rs.Eof Then
					Set oJSON.data("ALTNORNUEVO") = oJSON.Collection()
					Do While Not rs.Eof
						mes = rs("MES_ALTA")
                        alta = rs("ALTAS")
                        n3 = rs("N3")
                                                                                						
						Set typeItem = oJSON.AddToCollection(oJSON.data("ALTNORNUEVO"))
						typeItem.add "MES_ALTA", mes
						typeItem.add "ALTAS", alta
                        typeItem.add "N3", n3                                                              
						rs.MoveNext
					Loop
				End If
              			
			oJSON.data("success") = True
		
	Else
		message = "Ocurrió un error. Intenta nuevamente"
	End If
	If message <> "" Then
		oJSON.data("success") = False
		oJSON.data("reason") = message
	End If
	ALTANORMALCLIENTENUEVO = oJSON.JSONoutput()
	Pruebas_BD.Close()

End Function

Function SEGMENTONEGOCIO()
Set oJSON = New aspJSON
	'On Error Resume Next
	Pruebas_BD.Open()
	If Err.Number = 0 Then
				
				Set rs = SEGMENTONEGOCIO2()
				If Not rs.Eof Then
					Set oJSON.data("SEGMENTONEG") = oJSON.Collection()
					Do While Not rs.Eof
						mes = rs("MES_ALTA")
                        alta = rs("ALTAS")
                        n3 = rs("N3")
                                                                                						
						Set typeItem = oJSON.AddToCollection(oJSON.data("SEGMENTONEG"))
						typeItem.add "MES_ALTA", mes
						typeItem.add "ALTAS", alta
                        typeItem.add "N3", n3                                                              
						rs.MoveNext
					Loop
				End If
              			
			oJSON.data("success") = True
		
	Else
		message = "Ocurrió un error. Intenta nuevamente"
	End If
	If message <> "" Then
		oJSON.data("success") = False
		oJSON.data("reason") = message
	End If
	SEGMENTONEGOCIO = oJSON.JSONoutput()
	Pruebas_BD.Close()

End Function

Function ALTANORMALCLIENTEVIGENTE()
Set oJSON = New aspJSON
	'On Error Resume Next
	Pruebas_BD.Open()
	If Err.Number = 0 Then
				
				Set rs = ALTANORMALCLIENTEVIGENTE2()
				If Not rs.Eof Then
					Set oJSON.data("ALTNORVIGENTE") = oJSON.Collection()
					Do While Not rs.Eof
						mes = rs("MES_ALTA")
                        alta = rs("ALTAS")
                        n3 = rs("N3")
                                                                                						
						Set typeItem = oJSON.AddToCollection(oJSON.data("ALTNORVIGENTE"))
						typeItem.add "MES_ALTA", mes
						typeItem.add "ALTAS", alta
                        typeItem.add "N3", n3                                                              
						rs.MoveNext
					Loop
				End If
              			
			oJSON.data("success") = True
		
	Else
		message = "Ocurrió un error. Intenta nuevamente"
	End If
	If message <> "" Then
		oJSON.data("success") = False
		oJSON.data("reason") = message
	End If
	ALTANORMALCLIENTEVIGENTE = oJSON.JSONoutput()
	Pruebas_BD.Close()
End Function

Function OPERACIONFIJA() 
Set oJSON = New aspJSON
	'On Error Resume Next
	Pruebas_BD.Open()
	If Err.Number = 0 Then
				
				Set rs = OPERACIONFIJA2()
				If Not rs.Eof Then
					Set oJSON.data("OPERACIONFIJANUEVO") = oJSON.Collection()
					Do While Not rs.Eof	
						mes = rs("MES_ALTA")
                        alta = rs("ALTAS")
                        n3 = rs("N3")
                                                                                						
						Set typeItem = oJSON.AddToCollection(oJSON.data("OPERACIONFIJANUEVO"))
						typeItem.add "MES_ALTA", mes
						typeItem.add "ALTAS", alta
                        typeItem.add "N3", n3                                                              
						rs.MoveNext
					Loop
				End If


				Set rs = OPERACIONFIJA3()
				If Not rs.Eof Then
					Set oJSON.data("OPERACIONFIJAVIG") = oJSON.Collection()
					Do While Not rs.Eof
						mes = rs("MES_ALTA")
                        alta = rs("ALTAS")
                        n3 = rs("N3")
                                                                                						
						Set typeItem = oJSON.AddToCollection(oJSON.data("OPERACIONFIJAVIG"))
						typeItem.add "MES_ALTA", mes
						typeItem.add "ALTAS", alta
                        typeItem.add "N3", n3                                                              
						rs.MoveNext
					Loop
				End If
              			
			oJSON.data("success") = True
		
	Else
		message = "Ocurrió un error. Intenta nuevamente"
	End If
	If message <> "" Then
		oJSON.data("success") = False
		oJSON.data("reason") = message
	End If
	OPERACIONFIJA = oJSON.JSONoutput()
	Pruebas_BD.Close()
End Function 

Function SEGMENTONUEVOAUTOMICRO()
Set oJSON = New aspJSON
	'On Error Resume Next
	Pruebas_BD.Open()
	If Err.Number = 0 Then
				
				Set rs = SEGMENTONUEVOAUTOMICRO2()
				If Not rs.Eof Then
					Set oJSON.data("SEGNUEVOAUTONOMO") = oJSON.Collection()
					Do While Not rs.Eof	
						mes = rs("MES_ALTA")
                        alta = rs("ALTAS")
                        n3 = rs("N3")
                                                                                						
						Set typeItem = oJSON.AddToCollection(oJSON.data("SEGNUEVOAUTONOMO"))
						typeItem.add "MES_ALTA", mes
						typeItem.add "ALTAS", alta
                        typeItem.add "N3", n3                                                              
						rs.MoveNext
					Loop
				End If


				Set rs = SEGMENTONUEVOAUTOMICRO3()
				If Not rs.Eof Then
					Set oJSON.data("SEGNUEVOMICRO") = oJSON.Collection()
					Do While Not rs.Eof
						mes = rs("MES_ALTA")
                        alta = rs("ALTAS")
                        n3 = rs("N3")
                                                                             						
						Set typeItem = oJSON.AddToCollection(oJSON.data("SEGNUEVOMICRO"))
						typeItem.add "MES_ALTA", mes
						typeItem.add "ALTAS", alta
                        typeItem.add "N3", n3                                                              
						rs.MoveNext
					Loop
				End If
              			
			oJSON.data("success") = True
		
	Else
		message = "Ocurrió un error. Intenta nuevamente"
	End If
	If message <> "" Then
		oJSON.data("success") = False
		oJSON.data("reason") = message
	End If
	SEGMENTONUEVOAUTOMICRO = oJSON.JSONoutput()
	Pruebas_BD.Close()

End Function

Function TENENCIA()
Set oJSON = New aspJSON
	'On Error Resume Next
	Pruebas_BD.Open()
	If Err.Number = 0 Then
				
				Set rs = TENENCIATRIO()
				If Not rs.Eof Then
					Set oJSON.data("TRIO") = oJSON.Collection()
					Do While Not rs.Eof	
						mes = rs("MES_ALTA")
                        alta = rs("ALTAS")
                        n3 = rs("N3")
                                                                                						
						Set typeItem = oJSON.AddToCollection(oJSON.data("TRIO"))
						typeItem.add "MES_ALTA", mes
						typeItem.add "ALTAS", alta
                        typeItem.add "N3", n3                                                              
						rs.MoveNext
					Loop
				End If

				Set rs = TENENCIABATV()
				If Not rs.Eof Then
					Set oJSON.data("BATV") = oJSON.Collection()
					Do While Not rs.Eof
						mes = rs("MES_ALTA")
                        alta = rs("ALTAS")
                        n3 = rs("N3")
                                                                             						
						Set typeItem = oJSON.AddToCollection(oJSON.data("BATV"))
						typeItem.add "MES_ALTA", mes
						typeItem.add "ALTAS", alta
                        typeItem.add "N3", n3                                                              
						rs.MoveNext
					Loop
				End If

				Set rs = TENENCIAADSL()
				If Not rs.Eof Then
					Set oJSON.data("ADSL") = oJSON.Collection()
					Do While Not rs.Eof
						mes = rs("MES_ALTA")
                        alta = rs("ALTAS")
                        n3 = rs("N3")
                                                                             						
						Set typeItem = oJSON.AddToCollection(oJSON.data("ADSL"))
						typeItem.add "MES_ALTA", mes
						typeItem.add "ALTAS", alta
                        typeItem.add "N3", n3                                                              
						rs.MoveNext
					Loop
				End If

				Set rs = TENENCIABALN()
				If Not rs.Eof Then
					Set oJSON.data("BALN") = oJSON.Collection()
					Do While Not rs.Eof
						mes = rs("MES_ALTA")
                        alta = rs("ALTAS")
                        n3 = rs("N3")
                                                                             						
						Set typeItem = oJSON.AddToCollection(oJSON.data("BALN"))
						typeItem.add "MES_ALTA", mes
						typeItem.add "ALTAS", alta
                        typeItem.add "N3", n3                                                              
						rs.MoveNext
					Loop
				End If

				Set rs = TENENCIADTH()
				If Not rs.Eof Then
					Set oJSON.data("DTH") = oJSON.Collection()
					Do While Not rs.Eof
						mes = rs("MES_ALTA")
                        alta = rs("ALTAS")
                        n3 = rs("N3")
                                                                             						
						Set typeItem = oJSON.AddToCollection(oJSON.data("DTH"))
						typeItem.add "MES_ALTA", mes
						typeItem.add "ALTAS", alta
                        typeItem.add "N3", n3                                                              
						rs.MoveNext
					Loop
				End If

				Set rs = TENENCIASTB()
				If Not rs.Eof Then
					Set oJSON.data("STB") = oJSON.Collection()
					Do While Not rs.Eof
						mes = rs("MES_ALTA")
                        alta = rs("ALTAS")
                        n3 = rs("N3")
                                                                             						
						Set typeItem = oJSON.AddToCollection(oJSON.data("STB"))
						typeItem.add "MES_ALTA", mes
						typeItem.add "ALTAS", alta
                        typeItem.add "N3", n3                                                              
						rs.MoveNext
					Loop
				End If

					Set rs = TENENCIALNTV()
				If Not rs.Eof Then
					Set oJSON.data("LNTV") = oJSON.Collection()
					Do While Not rs.Eof
						mes = rs("MES_ALTA")
                        alta = rs("ALTAS")
                        n3 = rs("N3")
                                                                             						
						Set typeItem = oJSON.AddToCollection(oJSON.data("LNTV"))
						typeItem.add "MES_ALTA", mes
						typeItem.add "ALTAS", alta
                        typeItem.add "N3", n3                                                              
						rs.MoveNext
					Loop
				End If
              			
			oJSON.data("success") = True
		
	Else
		message = "Ocurrió un error. Intenta nuevamente"
	End If
	If message <> "" Then
		oJSON.data("success") = False
		oJSON.data("reason") = message
	End If
	TENENCIA = oJSON.JSONoutput()
	Pruebas_BD.Close()

End Function

Function PERSONANATURACONGIRO()
Set oJSON = New aspJSON
	'On Error Resume Next
	Pruebas_BD.Open()
	If Err.Number = 0 Then
				
				Set rs = PERSONANATURACONGIRO2()
				If Not rs.Eof Then
					Set oJSON.data("ME50MIL") = oJSON.Collection()
					Do While Not rs.Eof	
						mes = rs("MES_ALTA")
                        alta = rs("ALTAS")
                        n3 = rs("N3")
                                                                                						
						Set typeItem = oJSON.AddToCollection(oJSON.data("ME50MIL"))
						typeItem.add "MES_ALTA", mes
						typeItem.add "ALTAS", alta
                        typeItem.add "N3", n3                                                              
						rs.MoveNext
					Loop
				End If


				Set rs = SEGMENTONUEVOAUTOMICRO3()
				If Not rs.Eof Then
					Set oJSON.data("MA50MIL") = oJSON.Collection()
					Do While Not rs.Eof
						mes = rs("MES_ALTA")
                        alta = rs("ALTAS")
                        n3 = rs("N3")
                                                                             						
						Set typeItem = oJSON.AddToCollection(oJSON.data("MA50MIL"))
						typeItem.add "MES_ALTA", mes
						typeItem.add "ALTAS", alta
                        typeItem.add "N3", n3                                                              
						rs.MoveNext
					Loop
				End If
              			
			oJSON.data("success") = True
		
	Else
		message = "Ocurrió un error. Intenta nuevamente"
	End If
	If message <> "" Then
		oJSON.data("success") = False
		oJSON.data("reason") = message
	End If
	PERSONANATURACONGIRO = oJSON.JSONoutput()
	Pruebas_BD.Close()

End Function

Function CANALVENTA()
Set oJSON = New aspJSON
	'On Error Resume Next
	Pruebas_BD.Open()
	If Err.Number = 0 Then
				
				Set rs = CANALVENTA2()
				If Not rs.Eof Then
					Set oJSON.data("CVFTER") = oJSON.Collection()
					Do While Not rs.Eof	
						mes = rs("MES_ALTA")
                        alta = rs("ALTAS")
                        n3 = rs("N3")
                                                                                						
						Set typeItem = oJSON.AddToCollection(oJSON.data("CVFTER"))
						typeItem.add "MES_ALTA", mes
						typeItem.add "ALTAS", alta
                        typeItem.add "N3", n3                                                              
						rs.MoveNext
					Loop
				End If


				Set rs = CANALVENTA3()
				If Not rs.Eof Then
					Set oJSON.data("CVCARE") = oJSON.Collection()
					Do While Not rs.Eof
						mes = rs("MES_ALTA")
                        alta = rs("ALTAS")
                        n3 = rs("N3")
                                                                             						
						Set typeItem = oJSON.AddToCollection(oJSON.data("CVCARE"))
						typeItem.add "MES_ALTA", mes
						typeItem.add "ALTAS", alta
                        typeItem.add "N3", n3                                                              
						rs.MoveNext
					Loop
				End If

					Set rs = CANALVENTA4()
				If Not rs.Eof Then
					Set oJSON.data("CVPOVE") = oJSON.Collection()
					Do While Not rs.Eof
						mes = rs("MES_ALTA")
                        alta = rs("ALTAS")
                        n3 = rs("N3")
                                                                             						
						Set typeItem = oJSON.AddToCollection(oJSON.data("CVPOVE"))
						typeItem.add "MES_ALTA", mes
						typeItem.add "ALTAS", alta
                        typeItem.add "N3", n3                                                              
						rs.MoveNext
					Loop
				End If

					Set rs = CANALVENTA5()
				If Not rs.Eof Then
					Set oJSON.data("CVFAPR") = oJSON.Collection()
					Do While Not rs.Eof
						mes = rs("MES_ALTA")
                        alta = rs("ALTAS")
                        n3 = rs("N3")
                                                                             						
						Set typeItem = oJSON.AddToCollection(oJSON.data("CVFAPR"))
						typeItem.add "MES_ALTA", mes
						typeItem.add "ALTAS", alta
                        typeItem.add "N3", n3                                                              
						rs.MoveNext
					Loop
				End If
              			
			oJSON.data("success") = True
		
	Else
		message = "Ocurrió un error. Intenta nuevamente"
	End If
	If message <> "" Then
		oJSON.data("success") = False
		oJSON.data("reason") = message
	End If
	CANALVENTA = oJSON.JSONoutput()
	Pruebas_BD.Close()
End Function


Function SUBCANALVENTA()
Set oJSON = New aspJSON
	'On Error Resume Next
	Pruebas_BD.Open()
	If Err.Number = 0 Then
				
				Set rs = SUBCANALVENTA2()
				If Not rs.Eof Then
					Set oJSON.data("CRTERR") = oJSON.Collection()
					Do While Not rs.Eof	
						mes = rs("MES_ALTA")
                        alta = rs("ALTAS")
                        n3 = rs("N3")
                                                                                						
						Set typeItem = oJSON.AddToCollection(oJSON.data("CRTERR"))
						typeItem.add "MES_ALTA", mes
						typeItem.add "ALTAS", alta
                        typeItem.add "N3", n3                                                              
						rs.MoveNext
					Loop
				End If

					Set rs = SUBCANALVENTA3()
				If Not rs.Eof Then
					Set oJSON.data("CROUHO") = oJSON.Collection()
					Do While Not rs.Eof	
						mes = rs("MES_ALTA")
                        alta = rs("ALTAS")
                        n3 = rs("N3")
                                                                                						
						Set typeItem = oJSON.AddToCollection(oJSON.data("CROUHO"))
						typeItem.add "MES_ALTA", mes
						typeItem.add "ALTAS", alta
                        typeItem.add "N3", n3                                                              
						rs.MoveNext
					Loop
				End If

					Set rs = SUBCANALVENTA4()
				If Not rs.Eof Then
					Set oJSON.data("CRINHO") = oJSON.Collection()
					Do While Not rs.Eof	
						mes = rs("MES_ALTA")
                        alta = rs("ALTAS")
                        n3 = rs("N3")
                                                                                						
						Set typeItem = oJSON.AddToCollection(oJSON.data("CRINHO"))
						typeItem.add "MES_ALTA", mes
						typeItem.add "ALTAS", alta
                        typeItem.add "N3", n3                                                              
						rs.MoveNext
					Loop
				End If
					Set rs = SUBCANALVENTA5()
				If Not rs.Eof Then
					Set oJSON.data("CRINTL") = oJSON.Collection()
					Do While Not rs.Eof	
						mes = rs("MES_ALTA")
                        alta = rs("ALTAS")
                        n3 = rs("N3")
                                                                                						
						Set typeItem = oJSON.AddToCollection(oJSON.data("CRINTL"))
						typeItem.add "MES_ALTA", mes
						typeItem.add "ALTAS", alta
                        typeItem.add "N3", n3                                                              
						rs.MoveNext
					Loop
				End If
					Set rs = SUBCANALVENTA6()
				If Not rs.Eof Then
					Set oJSON.data("CRINCO") = oJSON.Collection()
					Do While Not rs.Eof	
						mes = rs("MES_ALTA")
                        alta = rs("ALTAS")
                        n3 = rs("N3")
                                                                                						
						Set typeItem = oJSON.AddToCollection(oJSON.data("CRINCO"))
						typeItem.add "MES_ALTA", mes
						typeItem.add "ALTAS", alta
                        typeItem.add "N3", n3                                                              
						rs.MoveNext
					Loop
				End If
					Set rs = SUBCANALVENTA7()
				If Not rs.Eof Then
					Set oJSON.data("CRINNE") = oJSON.Collection()
					Do While Not rs.Eof	
						mes = rs("MES_ALTA")
                        alta = rs("ALTAS")
                        n3 = rs("N3")
                                                                                						
						Set typeItem = oJSON.AddToCollection(oJSON.data("CRINNE"))
						typeItem.add "MES_ALTA", mes
						typeItem.add "ALTAS", alta
                        typeItem.add "N3", n3                                                              
						rs.MoveNext
					Loop
				End If
					Set rs = SUBCANALVENTA8()
				If Not rs.Eof Then
					Set oJSON.data("CROUNE") = oJSON.Collection()
					Do While Not rs.Eof	
						mes = rs("MES_ALTA")
                        alta = rs("ALTAS")
                        n3 = rs("N3")
                                                                                						
						Set typeItem = oJSON.AddToCollection(oJSON.data("CROUNE"))
						typeItem.add "MES_ALTA", mes
						typeItem.add "ALTAS", alta
                        typeItem.add "N3", n3                                                              
						rs.MoveNext
					Loop
				End If
					Set rs = SUBCANALVENTA9()
				If Not rs.Eof Then
					Set oJSON.data("CROUSE") = oJSON.Collection()
					Do While Not rs.Eof	
						mes = rs("MES_ALTA")
                        alta = rs("ALTAS")
                        n3 = rs("N3")
                                                                                						
						Set typeItem = oJSON.AddToCollection(oJSON.data("CROUSE"))
						typeItem.add "MES_ALTA", mes
						typeItem.add "ALTAS", alta
                        typeItem.add "N3", n3                                                              
						rs.MoveNext
					Loop
				End If


				
              			
			oJSON.data("success") = True
		
	Else
		message = "Ocurrió un error. Intenta nuevamente"
	End If
	If message <> "" Then
		oJSON.data("success") = False
		oJSON.data("reason") = message
	End If
	SUBCANALVENTA = oJSON.JSONoutput()
	Pruebas_BD.Close()
End Function

Function COMPCHURNTOTAL()
Set oJSON = New aspJSON
	'On Error Resume Next
	Pruebas_BD.Open()
	If Err.Number = 0 Then
				
				Set rs = COMPCHURNTOTAL2()
				If Not rs.Eof Then
					Set oJSON.data("COMCHU") = oJSON.Collection()
					Do While Not rs.Eof
						z= rs("MES_ALTA")	
						a = rs("N3")
                        b = rs("N3TOT")
                        c = rs("N6_Mora")
                        d = rs("N6_MoraTOT")
                        e = rs("N6_Vol")
                        f = rs("N6_VolTOT")
                        g = rs("N7_N12Mora")
                        h = rs("N7_N12MoraTOT")
                        i = rs("N7_N12Vol")
                        j = rs("N7_N12VolTOT")
                        k = rs("N12Total")
                        m = rs("N12TotalTOT")
                        n = rs("N6Total")
                        l = rs("N6TotalTOT")
                                                                                						
						Set typeItem = oJSON.AddToCollection(oJSON.data("COMCHU"))
						typeItem.add "MES_ALTA", z
						typeItem.add "N3", a
						typeItem.add "N3TOT", b
                        typeItem.add "N6_Mora", c                                                              
						typeItem.add "N6_MoraTOT", d
						typeItem.add "N6_Vol", e
						typeItem.add "N6_VolTOT", f
						typeItem.add "N7_N12Mora", g
						typeItem.add "N7_N12MoraTOT", h
						typeItem.add "N7_N12Vol", i
						typeItem.add "N7_N12VolTOT", j
						typeItem.add "N12Total", k
						typeItem.add "N12TotalTOT", m
						typeItem.add "N6_Total", n
						typeItem.add "N6_TotalTOT", l

						rs.MoveNext
					Loop
				End If
  			
			oJSON.data("success") = True
		
	Else
		message = "Ocurrió un error. Intenta nuevamente"
	End If
	If message <> "" Then
		oJSON.data("success") = False
		oJSON.data("reason") = message
	End If
	COMPCHURNTOTAL = oJSON.JSONoutput()
	Pruebas_BD.Close()
End Function

%>		