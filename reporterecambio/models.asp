<!--#include file="../assets/aspJSON/1.17/aspJSON.asp"-->
<!--#include file="../assets/helpers.asp"-->
<!--#include file="conection.asp"-->
<!--#include file="db.asp"-->
<%
Function datarecambio()
Set oJSON = New aspJSON
	'On Error Resume Next
	Pruebas_BD.Open()
	If Err.Number = 0 Then
				
				Set rs =  dataRecambio2()
				If Not rs.Eof Then
					Set oJSON.data("RECAMBIOBAJAS") = oJSON.Collection()
					Do While Not rs.Eof
						fecha = rs("FECHA")
                        mes0 = rs("MES0")
                        mes1 = rs("MES1")
                        mes2 = rs("MES2")
                        mes3 = rs("MES3")
                        mes4 = rs("MES4")
                        mes5 = rs("MES5")
                        mes6 = rs("MES6")
                        mes7 = rs("MES7")
                        tot = rs("tot")
						Set typeItem = oJSON.AddToCollection(oJSON.data("RECAMBIOBAJAS"))
						typeItem.add "FECHA", fecha
						typeItem.add "MES0", mes0
                        typeItem.add "MES1", mes1
                        typeItem.add "MES2", mes2 
                         typeItem.add "MES3", mes3
                            typeItem.add "MES4", mes4 
                               typeItem.add "MES5", mes5 
                                  typeItem.add "MES6", mes6 
                                     typeItem.add "MES7", mes7 
                                        typeItem.add "TOT", tot                                                           
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
	datarecambio = oJSON.JSONoutput()
	Pruebas_BD.Close()

End function 

Function datarecambiomixto()

Set oJSON = New aspJSON
	'On Error Resume Next
	Pruebas_BD.Open()
	If Err.Number = 0 Then
				
				Set rs =  datarecambiomixto2()
				If Not rs.Eof Then
					Set oJSON.data("RECAMBIOMIXTO") = oJSON.Collection()
					Do While Not rs.Eof
						fecha = rs("FECHA")
                        mes0 = rs("MES0")
                        mes1 = rs("MES1")
                        mes2 = rs("MES2")
                        mes3 = rs("MES3")
                        mes4 = rs("MES4")
                        mes5 = rs("MES5")
                        mes6 = rs("MES6")
                        mes7 = rs("MES7")
                        tot = rs("tot")
						Set typeItem = oJSON.AddToCollection(oJSON.data("RECAMBIOMIXTO"))
						typeItem.add "FECHA", fecha
						typeItem.add "MES0", mes0
                        typeItem.add "MES1", mes1
                        typeItem.add "MES2", mes2 
                         typeItem.add "MES3", mes3
                            typeItem.add "MES4", mes4 
                               typeItem.add "MES5", mes5 
                                  typeItem.add "MES6", mes6 
                                     typeItem.add "MES7", mes7 
                                        typeItem.add "TOT", tot                                                           
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
	datarecambiomixto = oJSON.JSONoutput()
	Pruebas_BD.Close()



End function 

Function datarecambioiconic()

Set oJSON = New aspJSON
	'On Error Resume Next
	Pruebas_BD.Open()
	If Err.Number = 0 Then
				
				Set rs =  datarecambioiconic2()
				If Not rs.Eof Then
					Set oJSON.data("RECAMBIOICONIC") = oJSON.Collection()
					Do While Not rs.Eof
						fecha = rs("FECHA")
                        mes0 = rs("MES0")
                        mes1 = rs("MES1")
                        mes2 = rs("MES2")
                        mes3 = rs("MES3")
                        mes4 = rs("MES4")
                        mes5 = rs("MES5")
                        mes6 = rs("MES6")
                        mes7 = rs("MES7")
                        tot = rs("tot")
						Set typeItem = oJSON.AddToCollection(oJSON.data("RECAMBIOICONIC"))
						typeItem.add "FECHA", fecha
						typeItem.add "MES0", mes0
                        typeItem.add "MES1", mes1
                        typeItem.add "MES2", mes2 
                         typeItem.add "MES3", mes3
                            typeItem.add "MES4", mes4 
                               typeItem.add "MES5", mes5 
                                  typeItem.add "MES6", mes6 
                                     typeItem.add "MES7", mes7 
                                        typeItem.add "TOT", tot                                                           
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
	datarecambioiconic = oJSON.JSONoutput()
	Pruebas_BD.Close()

End function 

Function datarecambionormal()


Set oJSON = New aspJSON
	'On Error Resume Next
	Pruebas_BD.Open()
	If Err.Number = 0 Then
				
				Set rs =  datarecambionormal2()
				If Not rs.Eof Then
					Set oJSON.data("RECAMBIONORMAL") = oJSON.Collection()
					Do While Not rs.Eof
						fecha = rs("FECHA")
                        mes0 = rs("MES0")
                        mes1 = rs("MES1")
                        mes2 = rs("MES2")
                        mes3 = rs("MES3")
                        mes4 = rs("MES4")
                        mes5 = rs("MES5")
                        mes6 = rs("MES6")
                        mes7 = rs("MES7")
                        tot = rs("tot")
						Set typeItem = oJSON.AddToCollection(oJSON.data("RECAMBIONORMAL"))
						typeItem.add "FECHA", fecha
						typeItem.add "MES0", mes0
                        typeItem.add "MES1", mes1
                        typeItem.add "MES2", mes2 
                         typeItem.add "MES3", mes3
                            typeItem.add "MES4", mes4 
                               typeItem.add "MES5", mes5 
                                  typeItem.add "MES6", mes6 
                                     typeItem.add "MES7", mes7 
                                        typeItem.add "TOT", tot                                                           
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
	datarecambionormal = oJSON.JSONoutput()
	Pruebas_BD.Close()



End function 



%>		