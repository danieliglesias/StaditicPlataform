<!--#include file="../assets/aspJSON/1.17/aspJSON.asp"-->
<!--#include file="../assets/helpers.asp"-->
<!--#include file="conection.asp"-->
<!--#include file="db.asp"-->
<%
Function filtrozonaFijo(zona2)
Set oJSON = New aspJSON
	'On Error Resume Next
	Pruebas_BD.Open()
	If Err.Number = 0 Then
				
				Set rs = filtrozonaFijos(zona2)
				If Not rs.Eof Then
					Set oJSON.data("ZONAFIJA") = oJSON.Collection()
					Do While Not rs.Eof
						region = rs("REGION")
                        seg = rs("segmento")
                        tipalta = rs("TIPO_CLIENTE_DEF")
                        venequi = rs("TENENCIA_FINAL")
                        arg1 = rs("canal")
                        altas = rs("ALTAS")
                        n3 = rs("N33")                                                              						
						Set typeItem = oJSON.AddToCollection(oJSON.data("ZONAFIJA"))
						typeItem.add "REGION", region
						typeItem.add "SEGMENTO", seg
                        typeItem.add "TIPO_CLIENTE", tipalta
                        typeItem.add "TENDENCIA", venequi
                        typeItem.add "CANAL", arg1
                        typeItem.add "ALTAS", altas
                        typeItem.add "N3", n3                                                               
						rs.MoveNext
					Loop
				End If

                	Set rs = filtrozonaFijo2(zona2)
				If Not rs.Eof Then
					Set oJSON.data("ZONAFIJA2") = oJSON.Collection()
					Do While Not rs.Eof
						region = rs("REGION")
                        seg = rs("segmento")
                        tipalta = rs("TIPO_CLIENTE_DEF")
                        venequi = rs("TENENCIA_FINAL")
                        arg1 = rs("canal")
                        altas = rs("ALTAS")
                        n3 = rs("N33")                                                              						
						Set typeItem = oJSON.AddToCollection(oJSON.data("ZONAFIJA2"))
						typeItem.add "REGION", region
						typeItem.add "SEGMENTO", seg
                        typeItem.add "TIPO_CLIENTE", tipalta
                        typeItem.add "TENDENCIA", venequi
                        typeItem.add "CANAL", arg1
                        typeItem.add "ALTAS", altas
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
	filtrozonaFijo = oJSON.JSONoutput()
	Pruebas_BD.Close()




End Function  
Function filtroZona(zona)
Set oJSON = New aspJSON
	'On Error Resume Next
	Pruebas_BD.Open()
	If Err.Number = 0 Then
				
				Set rs = Filtrozona2(zona)
				If Not rs.Eof Then
					Set oJSON.data("ZONA") = oJSON.Collection()
					Do While Not rs.Eof
						region = rs("REGION")
                        seg = rs("SEGMENTO")
                        tipalta = rs("TIPO_ALTA")
                        venequi = rs("VENTA_EQUIPO")
                        arg1 = rs("AGR_CANAL")
                        altas = rs("ALTAS")
                        n3 = rs("N33")                                                              						
						Set typeItem = oJSON.AddToCollection(oJSON.data("ZONA"))
						typeItem.add "REGION", region
						typeItem.add "SEGMENTO", seg
                        typeItem.add "TIPO_ALTA", tipalta
                        typeItem.add "VENTA_EQUIPO", venequi
                        typeItem.add "ARGCANAL", arg1
                        typeItem.add "ALTAS", altas
                        typeItem.add "N3", n3                                                               
						rs.MoveNext
					Loop
				End If

                	Set rs = Filtrozona3(zona)
				If Not rs.Eof Then
					Set oJSON.data("ZONA2") = oJSON.Collection()
					Do While Not rs.Eof
						region = rs("REGION")
                        seg = rs("SEGMENTO")
                        tipalta = rs("TIPO_ALTA")
                        venequi = rs("VENTA_EQUIPO")
                        arg1 = rs("AGR_CANAL")
                        altas = rs("ALTAS")
                        n3 = rs("N33")                                                              						
						Set typeItem = oJSON.AddToCollection(oJSON.data("ZONA2"))
						typeItem.add "REGION", region
						typeItem.add "SEGMENTO", seg
                        typeItem.add "TIPO_ALTA", tipalta
                        typeItem.add "VENTA_EQUIPO", venequi
                        typeItem.add "ARGCANAL", arg1
                        typeItem.add "ALTAS", altas
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
	filtroZona = oJSON.JSONoutput()
	Pruebas_BD.Close()
End Function

Function cargarfija()
Set oJSON = New aspJSON
	'On Error Resume Next
	Pruebas_BD.Open()
	If Err.Number = 0 Then
				
				Set rs = cargarFijaN3()
				If Not rs.Eof Then
					Set oJSON.data("FIJON3") = oJSON.Collection()
					Do While Not rs.Eof
						region = rs("REGION")
                        seg = rs("segmento")
                        tipalta = rs("TIPO_CLIENTE_DEF")
                        venequi = rs("TENENCIA_FINAL")
                        arg1 = rs("canal")
                        altas = rs("ALTAS")
                        n3 = rs("N3")                                                              						
						Set typeItem = oJSON.AddToCollection(oJSON.data("FIJON3"))
						typeItem.add "REGION", region
						typeItem.add "SEGMENTO", seg
                        typeItem.add "TIPO_CLIENTE", tipalta
                        typeItem.add "TENENCIA_FINAL", venequi
                        typeItem.add "CANAL", arg1
                        typeItem.add "ALTAS", altas
                        typeItem.add "N3", n3                                                               
						rs.MoveNext
					Loop
				End If


                Set rs = cargarFijaN32()
				If Not rs.Eof Then
					Set oJSON.data("FIJON32") = oJSON.Collection()
					Do While Not rs.Eof
						region = rs("REGION")
                        seg = rs("segmento")
                        tipalta = rs("TIPO_CLIENTE_DEF")
                        venequi = rs("TENENCIA_FINAL")
                        arg1 = rs("canal")
                        altas = rs("ALTAS")
                        n3 = rs("N33")                                                              						
						Set typeItem = oJSON.AddToCollection(oJSON.data("FIJON32"))
						typeItem.add "REGION", region
						typeItem.add "SEGMENTO", seg
                        typeItem.add "TIPO_CLIENTE", tipalta
                        typeItem.add "TENENCIA_FINAL", venequi
                        typeItem.add "CANAL", arg1
                        typeItem.add "ALTAS", altas
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
	cargarfija = oJSON.JSONoutput()
	Pruebas_BD.Close()

END Function
  
Function cargarmovil()
  Set oJSON = New aspJSON
	'On Error Resume Next
	Pruebas_BD.Open()
	If Err.Number = 0 Then
				
				Set rs = cargarMovilN3()
				If Not rs.Eof Then
					Set oJSON.data("MOVILN3") = oJSON.Collection()
					Do While Not rs.Eof
						region = rs("REGION")
                        seg = rs("SEGMENTO")
                        tipalta = rs("TIPO_ALTA")
                        venequi = rs("VENTA_EQUIPO")
                        arg1 = rs("AGR_CANAL")
                        altas = rs("ALTAS")
                        n3 = rs("N33")                                                              						
						Set typeItem = oJSON.AddToCollection(oJSON.data("MOVILN3"))
						typeItem.add "REGION", region
						typeItem.add "SEGMENTO", seg
                        typeItem.add "TIPO_ALTA", tipalta
                        typeItem.add "VENTA_EQUIPO", venequi
                        typeItem.add "ARGCANAL", arg1
                        typeItem.add "ALTAS", altas
                        typeItem.add "N3", n3                                                               
						rs.MoveNext
					Loop
				End If


                Set rs = cargarMovilN32()
				If Not rs.Eof Then
					Set oJSON.data("MOVILN32") = oJSON.Collection()
					Do While Not rs.Eof
						region = rs("REGION")
                        seg = rs("SEGMENTO")
                        tipalta = rs("TIPO_ALTA")
                        venequi = rs("VENTA_EQUIPO")
                        arg1 = rs("AGR_CANAL")
                        altas = rs("ALTAS")
                        n3 = rs("N33")                                                              						
						Set typeItem = oJSON.AddToCollection(oJSON.data("MOVILN32"))
						typeItem.add "REGION", region
						typeItem.add "SEGMENTO", seg
                        typeItem.add "TIPO_ALTA", tipalta
                        typeItem.add "VENTA_EQUIPO", venequi
                        typeItem.add "ARGCANAL", arg1
                        typeItem.add "ALTAS", altas
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
	cargarmovil = oJSON.JSONoutput()
	Pruebas_BD.Close()

END Function

Function cargarGrafico()
  Set oJSON = New aspJSON
	'On Error Resume Next
	Pruebas_BD.Open()
	If Err.Number = 0 Then
				
				Set rs = cargar_Total()
				If Not rs.Eof Then
					Set oJSON.data("REGIONTOTAL") = oJSON.Collection()
					Do While Not rs.Eof
					    uno = rs("I")
                        dos = rs("II")
                        tres = rs("III")
                        cuatro = rs("IV")
                        cinco = rs("V")
                        trece = rs("XIII")
                        seis = rs("VI")
                        siete = rs("VII")
                        ocho = rs("VIII")
                        nueve = rs("IX")
                        diez = rs("X")
                        once = rs("XI")
                        doce = rs("XII")
                                                                                						
						Set typeItem = oJSON.AddToCollection(oJSON.data("REGIONTOTAL"))
						typeItem.add "uno", uno
						typeItem.add "dos", dos
                        typeItem.add "tres", tres  
                        typeItem.add "cuatro", cuatro  
                        typeItem.add "cinco", cinco  
                        typeItem.add "trece", trece  
                        typeItem.add "seis", seis  
                        typeItem.add "siete", siete  
                        typeItem.add "ocho", ocho  
                        typeItem.add "nueve", nueve  
                        typeItem.add "diez", diez
                        typeItem.add "once", once
                        typeItem.add "doce", doce                                                                 
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
	cargarGrafico = oJSON.JSONoutput()
	Pruebas_BD.Close()

END Function

Function cargarGrafico2()
Set oJSON = New aspJSON
	'On Error Resume Next
	Pruebas_BD.Open()
	If Err.Number = 0 Then
				
				Set rs = cargar_Totalfijo()
				If Not rs.Eof Then
					Set oJSON.data("REGIONTOTALFIJO") = oJSON.Collection()
					Do While Not rs.Eof
					    uno = rs("I")
                        dos = rs("II")
                        tres = rs("III")
                        cuatro = rs("IV")
                        cinco = rs("V")
                        trece = rs("XIII")
                        seis = rs("VI")
                        siete = rs("VII")
                        ocho = rs("VIII")
                        nueve = rs("IX")
                        diez = rs("X")
                        once = rs("XI")
                        doce = rs("XII")
                        quince = rs("XV")
                                                                                						
						Set typeItem = oJSON.AddToCollection(oJSON.data("REGIONTOTALFIJO"))
						typeItem.add "uno", uno
						typeItem.add "dos", dos
                        typeItem.add "tres", tres  
                        typeItem.add "cuatro", cuatro  
                        typeItem.add "cinco", cinco  
                        typeItem.add "trece", trece  
                        typeItem.add "seis", seis  
                        typeItem.add "siete", siete  
                        typeItem.add "ocho", ocho  
                        typeItem.add "nueve", nueve  
                        typeItem.add "diez", diez
                        typeItem.add "once", once
                          typeItem.add "doce", doce
                        typeItem.add "quince", quince                                                                 
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
	cargarGrafico2 = oJSON.JSONoutput()
	Pruebas_BD.Close()  
END Function


Function dt_informe_mega()
  Set oJSON = New aspJSON
	'On Error Resume Next
	Pruebas_BD.Open()
	If Err.Number = 0 Then
				
				Set rs = dt_informe_mega_monitoreo()
				If Not rs.Eof Then
					Set oJSON.data("MEGA") = oJSON.Collection()
					Do While Not rs.Eof
					    fech = rs("FECHA")
                        reg = rs("REGISTROS")
               
                                                                                						
						Set typeItem = oJSON.AddToCollection(oJSON.data("MEGA"))
						typeItem.add "FECHA", fech
						typeItem.add "REGISTROS", reg
                                                                                     
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
	dt_informe_mega = oJSON.JSONoutput()
	Pruebas_BD.Close()

END Function 

Function dt_informe_per()
  Set oJSON = New aspJSON
	'On Error Resume Next
	Pruebas_BD.Open()
	If Err.Number = 0 Then
				
				Set rs = dt_informe_per_monitoreo()
				If Not rs.Eof Then
					Set oJSON.data("DTPER") = oJSON.Collection()
					Do While Not rs.Eof
					    fech = rs("FECHA")
                        reg = rs("REGISTROS")
               
                                                                                						
						Set typeItem = oJSON.AddToCollection(oJSON.data("DTPER"))
						typeItem.add "FECHA", fech
						typeItem.add "REGISTROS", reg
                                                                                     
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
	dt_informe_per = oJSON.JSONoutput()
	Pruebas_BD.Close()

END Function 

%>		