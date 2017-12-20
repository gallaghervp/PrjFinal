
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
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
							<label class="col-sm-3 control-label" for="idTxtEndereco">Endere�o</label>
							<div class="col-sm-9 has-feedback">
								<input type="text" class="form-control form-page"
									name="enderecofabri" id="txtEnderecoFabri"
									placeholder="Endere�o"> <i
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
							<label class="col-sm-3 control-label" for="idTxtMunicipio">Munic�pio</label>
							<div class="col-sm-9 has-feedback">
								<input type="text" class="form-control form-page"
									name="municipiofabri" id="txtMunicipioFabri"
									placeholder="Munic�pio"> <i
									class="fa fa-address-card form-control-feedback"></i>
							</div>
						</div>

						<div class="form-group">
							<label class="col-sm-3 control-label" for="idSelEstado">UF
							</label>
							<div class="col-sm-9 has-feedback">
								<select id="idSelAssuntoFabri" class="form-control form-page"
									name="selEstadofabri">
									<option>Selecione</option>
									<option value="AC">Acre</option>
									<option value="AL">Alagoas</option>
									<option value="AP">Amap�</option>
									<option value="AM">Amazonas</option>
									<option value="BA">Bahia</option>
									<option value="CE">Cear�</option>
									<option value="DF">Distrito Federal</option>
									<option value="ES">Esp�rito Santo</option>
									<option value="GO">Goi�s</option>
									<option value="MA">Maranh�o</option>
									<option value="MT">Mato Grosso</option>
									<option value="MS">Mato Grosso do Sul</option>
									<option value="MG">Minas Gerais</option>
									<option value="PA">Par�</option>
									<option value="PB">Para�ba</option>
									<option value="PR">Paran�</option>
									<option value="PE">Pernambuco</option>
									<option value="PI">Piau�</option>
									<option value="RJ">Rio de Janeiro</option>
									<option value="RN">Rio Grande do Norte</option>
									<option value="RS">Rio Grande do Sul</option>
									<option value="RO">Rond�nia</option>
									<option value="RR">Roraima</option>
									<option value="SC">Santa Catarina</option>
									<option value="SP">S�o Paulo</option>
									<option value="SE">Sergipe</option>
									<option value="TO">Tocantins</option>
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