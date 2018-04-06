<!--#include file ="menu.asp"-->
<!--#include file ="controller/UsuarioBuscarPorIdController.asp"-->
        <div class="row">
            <form class="col s12" action="controller/UsuarioCadastrarController.asp" method="post" id="formUsuario">
                <div class="row">

                    <input type="hidden" id="id" name="id" value="<%=id%>">
                    
                    <div class="input-field col s12">
                        <input placeholder="Digite o nome" id="nome" type="text" name="nome" class="validate" value="<%=nome%>">
                        <label for="nome">Nome</label>
                    </div>
                    
                    <div class="input-field col s12">
                        <input id="email" type="email" name="email" class="validate" value="<%=email%>">
                        <label for="email">Email</label>
                    </div>

                    <div class="input-field col s12">
                        <input id="senha" type="password" name="senha" class="validate" value="<%=senha%>">
                        <label for="senha">Senha</label>
                    </div>
                                        
                    <input type="submit" id="btnEnviar">
                </div>
            </form>       
        </div>
    <!--#include file ="fimMenu.asp"-->