<!--#include file ="menu.asp"-->
<!--#include file ="controller/UsuarioBuscarController.asp"-->
    
    <script>      
      $(document).ready(function(){
      
      var id;
        $('.modal').modal({
          ready: function(modal, trigger){
            id = trigger.attr('id');
            modal.find('#trigger-id').text(trigger.attr('id'));
            modal.find('#attr-data-nome').text(trigger.data('nome'));
          }
        });
        
        document.getElementById("btnExcluir").addEventListener("click", excluirUsuario);

        function excluirUsuario()
        {                    
          document.location="controller/UsuarioExcluirController.asp?id="+id;
        }
      });
    </script>
    
    <% if trim(strMsg) <> "" then      
      Response.Write("<script>Materialize.toast('"&strMsg&"', 3000, 'rounded');</script>")
    end if %>

    <h3 align="center">Usuarios Cadastrados</h3>
    <table class="highlight centered">
        <thead>
          <tr>
              <th style="display:none;">Id</th>
              <th>Nome</th>
              <th>Email</th>
              <th>Editar</th>
              <th>Excluir</th>
          </tr>
        </thead>

        <tbody>        
        <%
          for j = 0 to UBound(Usuarios) 
        %>
          <tr>
            <td><%=Usuarios(j).getNome()%></td>
            <td><%=Usuarios(j).getEmail()%></td>
            <td><a href="cadastrar.asp?id=<%=Usuarios(j).getId()%>"><i class="material-icons">edit</i></a></td>
            <td><a class="modal-trigger" id="<%=Usuarios(j).getId()%>" data-nome="<%=Usuarios(j).getNome()%>" href="#modal1" data-toggle="modal" data-target="modal1"><i class="material-icons">delete</i></a></td>
          </tr>
        <%
          Next 
        %>
        </tbody>
      </table>
 
      <div id="modal1" class="modal">
        <div class="modal-content">
          <h4>Exclusao do Usuario</h4>
          <p>Tem certeza que deseja excluir <strong id="attr-data-nome"></strong>?</p>
          <span id="trigger-id" style="visibility: hidden;"></strong></p>
        </div>
        <div class="modal-footer">
          <a href="#!" id="btnCancelar" class="modal-action modal-close waves-effect waves-green btn-flat">Cancelar</a>
          <a href=# id="btnExcluir" class="modal-action modal-close waves-effect waves-green btn-flat">Excluir</a>
        </div>
      </div>
        
<!--#include file ="fimMenu.asp"-->
        
        



