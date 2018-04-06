<!--#include file = "../model/Usuario.asp"-->
<!--#include file ="../dao/conexao.asp"-->

<%
    Dim idUsuario
    Dim User

    idUsuario = Request.QueryString("id")
    'Request.Item("id") -> pega tanto da URL como do formulario
    'Request.QueryString("id") Poderia ser desse jeito tbm

    'trim é pra tirar espaco
    if trim(idUsuario) = "" or isnull(idUsuario) then
        idUsuario = 0
    end if

    if not isnumeric(idUsuario) then
        Response.Write = "Parametro ID inválido"
        Response.End 
    end if

    'cint converte para inteiro
    if cint(idUsuario) <> 0 then                
            abreConexao()            
                strSQL = "SELECT [id], [nome], [email], [senha] FROM [Kaique].[dbo].[usuarios] where [id] = "&idUsuario
                set rs = conn.execute(strSQL) 
                                
                id = rs("id")
                nome = rs("nome")
                email = rs("email")
                senha = rs("senha")
                Set rs = Nothing
            fechaConexao()      
    end if
    
    
%>

