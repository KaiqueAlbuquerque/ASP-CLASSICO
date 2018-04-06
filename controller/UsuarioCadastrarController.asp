<!--#include file = "../model/Usuario.asp"-->
<!--#include file = "../dao/UsuarioDAO.asp"-->

<%
    dim id
    dim nome
    dim email
    dim senha
    dim objUsuario 
    dim objUsuarioDao
    
    id = replace(Request.form("id"),"'","")
    nome = replace(Request.form("nome"),"'","")
    email = replace(Request.form("email"),"'","")
    senha = replace(Request.form("senha"),"'","")
    
    if trim(id) = "" or isnull(id) or trim(id) = "0" then
        id = 0
    end if

    set objUsuario = new Usuario
    objUsuario.Usuario nome, email, senha    
    set objUsuarioDao = new UsuarioDAO

    if cint(id) <> 0 then  
        objUsuario.setId(id)
        objUsuarioDao.Alterar(objUsuario)
        response.redirect("../index.asp?strStatus=ALT")
        response.end
    else        
        objUsuarioDao.Cadastrar(objUsuario)
        response.redirect("../index.asp?strStatus=INC")
        response.end
    end if

    

%>