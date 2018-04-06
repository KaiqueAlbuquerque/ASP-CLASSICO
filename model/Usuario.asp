<%
    Class Usuario

        Private id_
        Private nome_
        Private email_
        Private senha_    
        
        Public Sub Usuario(nome_, email_, senha_)
            setNome nome_
            setEmail email_
            setSenha senha_
        End Sub

        Public Property get getId()
            getId = id_
        End Property 
  
        Public sub setId(vId)
            id_= vId
        End sub

        Public Property get getNome()
            getNome = nome_
        End Property 
  
        Public sub setNome(vNome)
            nome_ = vNome
        End sub

        Public Property get getEmail()
            getEmail = email_
        End Property 
  
        Public sub setEmail(vEmail)
            email_ = vEmail
        End sub

        Public Property get getSenha()
            getSenha = senha_
        End Property 
  
        Public sub setSenha(vSenha)
            senha_ = vSenha
        End sub

        Public Function ToString()
            ToString = "<br>Nome: " & nome_ & "<br>Email: " & email_ & "<br>Senha: " & senha_ 
            Response.Write ToString
        End Function

    End Class
%>