<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <title>ChipStore - Incluir Administrador</title>
</head>

<body style="padding-top: 240px;">
    
<%@ include file="../template/cabecalho2.jsp" %>
    
    <div class="container">
        <div class="row">
            <div class="col-sm-3 col-md-2 sidebar">
                <ul class="nav nav-sidebar">
                     <li><a class="sidebar-brand" href="#">Bem vindo, ADM! <span class="sr-only">(current)</span></a></li>
                    <li><a href="registroAdm.jsp">Registro</a></li>
                </ul>
            </div>
            <div class="col-sm-9 col-sm-offset-3 main">
                <ul class="nav nav-tabs">
                    <li role="presentation"><a href="MontarFabricante">Cadastro Fabricante</a></li>
                    <li role="presentation"><a href="MontarProduto">Cadastro Produto</a></li>
                    <li role="presentation"><a href="incluirCategoria.jsp">Cadastro Categoria</a></li>
                    <li role="presentation" class="active"><a href="#">Cadastro ADM</a></li>
                </ul>

                <!--------------- CADASTRO ADMINISTRADOR -------------------->


                <div class="card-dados-container">
				<form action="IncluirAdministrador" method="post" class="form-horizontal" style="margin-right:40px;">
                    <h2 class="form-heading">Cadastrar</h2>
                    <hr>
                    <div class="form-group">
                        <label class="col-sm-3 control-label" for="idTxtNome">Nome</label>
                        <div class="col-sm-9 has-feedback">
                            <input type="text" class="form-control form-page" name="nomepro" id="txtNomepro" placeholder="Nome">
                            <i class="fa fa-pencil form-control-feedback"></i>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-3 control-label" for="idTxtCpf">Cpf</label>
                        <div class="col-sm-9 has-feedback">
                            <input type="text" class="form-control form-page" name="cpfpro" id="txtNomepro" placeholder="Cpf">
                            <i class="fa fa-pencil form-control-feedback"></i>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-3 control-label" for="idTxtTel">Telefone</label>
                        <div class="col-sm-9 has-feedback">
                            <input type="text" class="form-control form-page" name="telpro" id="txtTelPro" maxlength="10" placeholder="(xx) xxxx-xxxx">
                            <i class="fa fa-phone form-control-feedback"></i>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-3 control-label" for="idTxtEmail">Email</label>
                        <div class="col-sm-9 has-feedback">
                            <input type="email" class="form-control form-page" name="emailpro" id="TxtEmailPro" placeholder="E-mail">
                            <i class="fa fa-envelope form-control-feedback"></i>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-3 control-label" for="idpswSenha">Senha</label>
                        <div class="col-sm-9 has-feedback">
                            <input type="password" class="form-control form-page" name="senhapro" id="pswSenhaPro" placeholder="Senha">
                            <i class="fa fa-lock form-control-feedback"></i>
                        </div>
                    </div>
                    <div class="form-group" style="position:relative;">
                        <div class="col-sm-offset-3 col-sm-9">
                            <button type="submit" class="btn btn-block btn-form">ENVIAR</button>
                        </div>
                    </div>
                </form>

                </div>
            </div>
        </div>
    </div>

</body>

</html>
