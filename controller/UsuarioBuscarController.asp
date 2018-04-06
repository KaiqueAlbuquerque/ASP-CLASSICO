<!--#include file = "../model/Usuario.asp"-->
<!--#include file = "../dao/UsuarioDAO.asp"-->

<%
    Dim Usuarios
    Dim strStatus
    Dim strMsg
    
    set Usuarios = new Usuario

    set objUsuarioDao = new UsuarioDAO
    Usuarios = objUsuarioDao.BuscarUsuarios()

    strStatus = Request.Item("strStatus")
      strMsg = ""

      select case ucase(trim(strStatus))
          case "INC"
              strMsg = "Usuario cadastrado com sucesso"
          case "ALT"
              strMsg = "Usuario alterado com sucesso"
          case "EXC"
              strMsg = "Usuario deletado com sucesso"
          case else
              strMsg = "" 
      end select
%>