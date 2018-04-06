<%
    Dim conn
    Set conn = Server.CreateObject("ADODB.Connection")
    set rs = Server.CreateObject("ADODB.recordset")

    function abreConexao()
        Conn.Open "Provider=SQLOLEDB; Data Source = 200.218.13.42; Initial Catalog = Kaique; User Id = dev; Password= 1962KNH-"
    End Function

    function fechaConexao()
        Conn.close
    End Function    
%>




