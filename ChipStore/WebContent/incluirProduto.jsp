<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <title>ChipStore - Incluir Produtos</title>
</head>

<body style="padding-top: 240px;">

<%@ include file="../template/cabecalho2.jsp" %>

    <!-- INCLUIR modal_login.php -->
    <div class="container">
        <div class="row">
            <div class="col-sm-3 col-md-2 sidebar">
                <ul class="nav nav-sidebar">
                    <li><a class="sidebar-brand" href="#">Bem vindo, ADM! <span class="sr-only">(current)</span></a></li>
                    <li><a href="registroProduto.jsp">Registro</a></li>
                </ul>
            </div>
            <div class="col-sm-9 col-sm-offset-3 main">
                <ul class="nav nav-tabs">
                    <li role="presentation"><a href="MontarFabricante">Cadastro Fabricante</a></li>
                    <li role="presentation" class="active"><a href="#">Cadastro Produto</a></li>
                    <li role="presentation"><a href="incluirCategoria.jsp">Cadasatro Categoria</a></li>
                    <li role="presentation"><a href="incluirAdministrador.jsp">Cadastro ADM</a></li>
                </ul>



                <!--------------- CADASTRO PRODUTO -------------------->

                <div class="card-dados-container">
                    <form action="incluirProduto" method="post" class="form-horizontal" style="margin-right:40px;">
                        <h2 class="form-heading">Produto</h2>
                        <hr>

                        <div class="form-group">
                            <label class="col-sm-3 control-label" for="idTxtCodigoB">Código de Barra</label>
                            <div class="col-sm-9 has-feedback">
                                <input type="text" class="form-control form-page" name="codigoprodu" id="txtCodigoProdu" maxlength="11" placeholder="xxxxxxxxxxxxxxxxxxxx">
                                <i class="fa fa-pencil form-control-feedback"></i>
                            </div>
                        </div>

                        <div class="form-group">
                            <label class="col-sm-3 control-label" for="idTxtNomeP">Nome</label>
                            <div class="col-sm-9 has-feedback">
                                <input type="text" class="form-control form-page" name="nomeprodu" id="txtNomeProdu" placeholder="Nome">
                                <i class="fa fa-pencil form-control-feedback"></i>
                            </div>
                        </div>
                        
                        <div class="form-group">
                            <label class="col-sm-3 control-label" for="idTxtModelo">Modelo</label>
                            <div class="col-sm-9 has-feedback">
                                <input type="text" class="form-control form-page" name="modeloprodu" id="txtModeloProdu" placeholder="Modelo">
                                <i class="fa fa-pencil form-control-feedback"></i>
                            </div>
                        </div>
                        
                        <div class="form-group">
                            <label class="col-sm-3 control-label" for="idTxtDescricao">Descrição</label>
                            <div class="col-sm-9 has-feedback">
                                <input type="text" class="form-control form-page" name="descricaoprodu" id="txtDescricaoProdu" placeholder="Descrição">
                                <i class="fa fa-pencil form-control-feedback"></i>
                            </div>
                        </div>
                        
                        <div class="form-group">
                            <label class="col-sm-3 control-label" for="idTxtPreco">Preço</label>
                            <div class="col-sm-9 has-feedback">
                                <input type="text" class="form-control form-page" name="precoprodu" id="txtPrecoProdu" maxlength="11" placeholder="R$">
                                <i class="fa fa-pencil form-control-feedback"></i>
                            </div>
                        </div>
                        
                                                <div class="form-group">
                            <label class="col-sm-3 control-label" for="idQuantidade">Quantidade</label>
                            <div class="col-sm-9 has-feedback">
                                <select id="idSelQuantidadeProdu" class="form-control form-page" name="quantidadeprodu">
                                                                <option></option>
                                                                <option value="nivel1">1</option>
                                                                <option value="nivel2">2</option>
                                                                <option value="nivel3">3</option>
                                                                <option value="nivel1">4</option>
                                                                <option value="nivel2">5</option>
                                                                <option value="nivel3">6</option>
                                                                <option value="nivel1">7</option>
                                                                <option value="nivel2">8</option>
                                                                <option value="nivel3">9</option>
                                                                <option value="nivel1">10</option>
                                                                <option value="nivel2">20</option>
                                                                <option value="nivel3">30</option>
                                                                <option value="nivel2">40</option>
                                                                <option value="nivel3">50</option>
                                                                <option value="nivel3">70</option>
                                                                <option value="nivel3">100</option>
                                                            </select>
                            </div>
                        </div>
                        
                        <div class="form-group">
                            <label class="col-sm-3 control-label" for="idCategoriaProdu">Categoria</label>
                            <div class="col-sm-9 has-feedback">
                                <input id="idSelCategoriaProdu" class="form-control form-page" name="categoriaprodu">
                            </div>
                        </div>
                        
                        <div class="form-group">
                            <label class="col-sm-3 control-label" for="idCategoriaP">Fabricante</label>
                            <div class="col-sm-9 has-feedback">
                                <input id="idSelCategoriaProdu" class="form-control form-page" name="fabricanteaprodu">
                            </div>
                        </div>

                        <div class="form-group">
                            <label class="col-sm-3 control-label" for="idDisponibilidade">Disponibilidade</label>
                            <div class="col-sm-9 has-feedback">
                                <INPUT TYPE="RADIO" NAME="OPCAO" VALUE="op1" id="idSelDisponibilidadeSim" id="txtDisponibilidadeSim" name="disponibilidadeSim"> Sim
								<INPUT TYPE="RADIO" NAME="OPCAO" VALUE="op2" id="idSelDisponibilidadeNao" id="txtDisponibilidadeNao" name="disponibilidadeNao"> Não 
                            </div>
                        </div>

                        <div class="form-group">
                            <label class="col-sm-3 control-label" for="idTxtImagem">Imagem</label>
                            <div class="col-sm-9 has-feedback">
                                <input id="txtImagemProdu" name="imagemprodu" type="file" size="30">
                            </div>
                        </div>

                        <div class="form-group" style="position:relative;">
                            <div class="col-sm-offset-3 col-sm-9">
                                <button type="submit" class="btn btn-block btn-form">Cadastrar</button>
                            </div>
                        </div>
                    </form>

                </div>
            </div>
        </div>
    </div>
</body>

</html>
