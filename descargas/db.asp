
<%
 
Function eliminars(file)
Set cmd = Server.CreateObject("ADODB.Command")
	With cmd
		.ActiveConnection = Pruebas_BD
		.CommandText = "SP_ELIMINAR_ARCHIVO"
        .Parameters.Append .CreateParameter("@file", 200, 1, 20, ""&file)
		.CommandType = 4
		Set eliminars = .Execute
	End With

End Function
%>