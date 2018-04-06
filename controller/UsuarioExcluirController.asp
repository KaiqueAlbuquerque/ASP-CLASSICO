<!--#include file = "../model/Usuario.asp"-->
<!--#include file = "../dao/UsuarioDAO.asp"-->

<%
    dim id
    dim objUsuarioDao

    id = Request.QueryString("id")

    'trim é pra tirar espaco
    if trim(id) = "" or isnull(id) or trim(id) = "0" then
        Response.Write "<script>alert('Id não informado. Favor verificar'); document.location='index.asp';</script>"    
        Response.End
    else
        set objUsuarioDao = new UsuarioDAO
        objUsuarioDao.Excluir(id)
    end if

    response.redirect("../index.asp?strStatus=EXC")
    response.end
%>