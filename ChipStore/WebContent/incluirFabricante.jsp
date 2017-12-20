
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"
	import="java.util.*, br.com.chipstore.model.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>ChipStore - Incluir Fabricante</title>
</head>

<body style="padding-top: 240px;">

	<%@ include file="../template/cabecalho2.jsp"%>

	<div class="container">
		<div class="row">
			<div class="col-sm-3 col-md-2 sidebar">
				<ul class="nav nav-sidebar">
					<li><a class="sidebar-brand" href="#">Bem vindo, ADM! <span
							class="sr-only">(current)</span></a></li>
					<li><a href="registroFabricante.jsp">Registro</a></li>
				</ul>
			</div>
			<div class="col-sm-9 col-sm-offset-3 main">
				<ul class="nav nav-tabs">
					<li role="presentation" class="active"><a href="#">Cadastro
							Fabricante</a></li>
					<li role="presentation"><a href="MontarProduto">Cadastro
							Produto</a></li>
					<li role="presentation"><a href="incluirCategoria.jsp">Cadastro
							Categoria</a></li>
					<li role="presentation"><a href="incluirAdministrador.jsp">Cadastro
							ADM</a></li>
				</ul>

				<!--------------- CADASTRO FABRICANTE -------------------->


				<div class="card-dados-container">
					<form action="IncluirFabricante" method="post"
						class="form-horizontal" style="margin-right: 40px;">
						<h2 class="form-heading">Fabricante</h2>
						<hr>
						<div class="form-group">
							<label class="col-sm-3 control-label" for="idTxtNome">Nome</label>
							<div class="col-sm-9 has-feedback">
								<input type="text" class="form-control form-page"
									name="nomefabri" id="txtNomeFabri" placeholder="Nome">
								<i class="fa fa-pencil form-control-feedback"></i>
							</div>
						</div>

						<div class="form-group">
							<label class="col-sm-3 control-label" for="idTxtCnpj">CNPJ</label>
							<div class="col-sm-9 has-feedback">
								<input type="text" class="form-control form-page"
									name="cnpjfabri" id="txtCnpjFabri" maxlength="11"
									placeholder="xx.xxx.xx.xxxx.xx"> <i
									class="fa fa-pencil form-control-feedback"></i>
							</div>
						</div>

						<div class="form-group">
							<label class="col-sm-3 control-label" for="idTxtEndereco">Endereço</label>
							<div class="col-sm-9 has-feedback">
								<input type="text" class="form-control form-page"
									name="enderecofabri" id="txtEnderecoFabri"
									placeholder="Endereço"> <i
									class="fa fa-address-card form-control-feedback"></i>
							</div>
						</div>

						<div class="form-group">
							<label class="col-sm-3 control-label" for="idTxtComplemento">Complemento</label>
							<div class="col-sm-9 has-feedback">
								<input type="text" class="form-control form-page"
									name="complementofabri" id="txtComplementoFabri"
									placeholder="Complemento"> <i
									class="fa fa-address-card form-control-feedback"></i>
							</div>
						</div>

						<div class="form-group">
							<label class="col-sm-3 control-label" for="idTxtBairro">Bairro</label>
							<div class="col-sm-9 has-feedback">
								<input type="text" class="form-control form-page"
									name="bairrofabri" id="txtBairroCli" placeholder="Bairro">
								<i class="fa fa-address-card form-control-feedback"></i>
							</div>
						</div>

						<div class="form-group">
							<label class="col-sm-3 control-label" for="idTxtMunicipio">Município</label>
							<div class="col-sm-9 has-feedback">
								<input type="text" class="form-control form-page"
									name="municipiofabri" id="txtMunicipioFabri"
									placeholder="Município"> <i
									class="fa fa-address-card form-control-feedback"></i>
							</div>
						</div>

						<div class="form-group">
							<label class="col-sm-3 control-label" for="idSelEstado">UF
							</label>
							<div class="col-sm-9 has-feedback">
							 <% 
                        List <String> ufs = (List<String>) request.getAttribute("ufs");
				%>
								<select id="idSelAssuntoFabri" class="form-control form-page"
									name="selEstadofabri">
									 <%
						for(String uf: ufs) {
				%>
								<option value="<%=uf %>"> <%=uf %> </option>
				<% 
						}
				%>
									
								</select>
							</div>
						</div>

						<div class="form-group">
							<label class="col-sm-3 control-label" for="idTxtTel">Contato</label>
							<div class="col-sm-9 has-feedback">
								<input type="text" class="form-control form-page"
									name="contatofabri" id="txtTelFabri" maxlength="10"
									placeholder="(xx) xxxx-xxxx"> <i
									class="fa fa-phone form-control-feedback"></i>
							</div>
						</div>

						<div class="form-group">
							<label class="col-sm-3 control-label" for="idTxtTel">Telefone</label>
							<div class="col-sm-9 has-feedback">
								<input type="text" class="form-control form-page"
									name="telfabri" id="txtTelFabri" maxlength="10"
									placeholder="(xx) xxxx-xxxx"> <i
									class="fa fa-phone form-control-feedback"></i>
							</div>
						</div>

						<div class="form-group">
							<label class="col-sm-3 control-label" for="idTxtEmail">Email</label>
							<div class="col-sm-9 has-feedback">
								<input type="email" class="form-control form-page"
									name="emailfabri" id="TxtEmailFabri" placeholder="E-mail">
								<i class="fa fa-envelope form-control-feedback"></i>
							</div>
						</div>


						<div class="form-group" style="position: relative;">
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