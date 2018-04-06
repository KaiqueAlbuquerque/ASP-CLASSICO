<!--#include file ="conexao.asp"-->

<%
    Class UsuarioDao

        Public Function Cadastrar(Usuario)
            Dim strSQL
            'response.write Usuario.getNome
            abreConexao()
                strSQL = "insert into usuarios (nome, email, senha) values ('"&Usuario.getNome&"', '"&Usuario.getEmail&"', '"&Usuario.getSenha&"');"
                conn.execute(strSQL) 
            fechaConexao()           
        End Function

        Public Function Alterar(Usuario)
            Dim strSQL
            'response.write Usuario.getNome
            abreConexao()
                strSQL = "UPDATE [Kaique].[dbo].[usuarios] SET nome = '"&Usuario.getNome& "', email = '"&Usuario.getEmail&"', senha = '"&Usuario.getSenha&"'WHERE id= "&Usuario.getId
                conn.execute(strSQL) 
            fechaConexao()           
        End Function
        
        Public Function BuscarUsuarios()
            Dim i 
            Dim strSQL
            i = Quantidade() - 1
                  
            Dim arrayUsuarios()  
            Redim arrayUsuarios(i)

            abreConexao()
                strSQL = "select * from [Kaique].[dbo].[usuarios]"
                set rs = conn.execute(strSQL)                    
                
                For j = 0 to UBound(arrayUsuarios) 

                    Set arrayUsuarios(j) = new Usuario
                    arrayUsuarios(j).setId(rs("id"))
                    arrayUsuarios(j).setNome(rs("nome"))
                    arrayUsuarios(j).setEmail(rs("email"))
                    arrayUsuarios(j).setSenha(rs("senha"))
                    rs.MoveNext 
                    
                Next 
                Set rs = Nothing
            fechaConexao()   
            
            BuscarUsuarios = arrayUsuarios
        End Function
        
        Public Function Quantidade()
            Dim strSQL
            Dim i 
            
            i = 0
           
            abreConexao()
                strSQL = "select * from [Kaique].[dbo].[usuarios]"
                set rs = conn.execute(strSQL)                    
                
                While Not rs.EOF
                    i = i + 1                
                    rs.MoveNext
                Wend
                Set rs = Nothing

                fechaConexao()
            Quantidade = i
        End Function     

        Public Function Excluir(id)
            Dim strSQL
            abreConexao()
                strSQL = "DELETE FROM [Kaique].[dbo].[usuarios] where id= "&id
                conn.execute(strSQL)
            fechaConexao()
        End Function  

    End Class
%>