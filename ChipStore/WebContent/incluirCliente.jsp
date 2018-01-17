<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"
	import="java.util.*, br.com.chipstore.model.*"%>
<!DOCTYPE html>
<html>
<head>
<title>ChipStore - Incluir Cliente</title>
<script language="javascript" type="text/javascript"
	src="js/validacao.js">
	
</script>
</head>
<body>

	<jsp:include page="template/cabecalho2.jsp" />


	<!--------------- CADASTRO CLIENTE -------------------->

	<div class="container form-container">
		<div class="row">
			<div class="form-block">
				<form action="IncluirCliente" name="form1" method="post" class="form-horizontal"
					style="margin-right: 40px;">
					<h2 class="form-heading">Cadastrar</h2>
					<hr>
					<div class="form-group">
						<label class="col-sm-3 control-label" for="idTxtNome">Nome</label>
						<div class="col-sm-9 has-feedback">
							<input type="text" class="form-control form-page" name="nomecli"
								id="txtNomeCli" placeholder="Nome Completo"> <i
								class="fa fa-pencil form-control-feedback"></i>
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-3 control-label" for="idDteNascimento">Data
							de Nascimento:</label><br>
						<div class="col-sm-9 has-feedback">
							<input name="datacli" max="2018-01-01" type="date"
								id="txtDataCli">
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-3 control-label" for="idTxtCpf">CPF</label>
						<div class="col-sm-9 has-feedback">
							<input type="text" class="form-control form-page" name="cpf"
								id="txtCpfCli" onBlur="ValidarCPF(form1.cpf);"
								onKeyPress="MascaraCPF(form1.cpf);" maxlength="14"
								placeholder="xxx.xxx.xxx-xx" required="required"> <i
								class="fa fa-pencil form-control-feedback"></i>
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-3 control-label" for="idTxtRg">RG</label>
						<div class="col-sm-9 has-feedback">
							<input name="rg" type="text" id="txtRgCli" size="30" maxlength="12" onKeyPress="MascaraRG(form1.rg);" class="form-control form-page" 
								placeholder="xxxxxxxx-x" required="required"> <i
								class="fa fa-pencil form-control-feedback"></i>
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-3 control-label" for="idTxtTel">Telefone</label>
						<div class="col-sm-9 has-feedback">
							<input type="text" class="form-control form-page" name="telcli"
								id="txtTelCli" maxlength="11" placeholder="(xx) xxxx-xxxx">
							<i class="fa fa-phone form-control-feedback"></i>
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-3 control-label" for="idTxtEndereco">Endereço</label>
						<div class="col-sm-9 has-feedback">
							<input type="text" class="form-control form-page"
								name="enderecocli" id="txtEnderecoCli" placeholder="Endereço">
							<i class="fa fa-address-card form-control-feedback"></i>
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-3 control-label" for="idTxtComplemento">Complemento</label>
						<div class="col-sm-9 has-feedback">
							<input type="text" class="form-control form-page"
								name="complementocli" id="txtComplementoCli"
								placeholder="Complemento"> <i
								class="fa fa-address-card form-control-feedback"></i>
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-3 control-label" for="idTxtBairro">Bairro</label>
						<div class="col-sm-9 has-feedback">
							<input type="text" class="form-control form-page"
								name="bairrocli" id="txtBairroCli" placeholder="Bairro">
							<i class="fa fa-address-card form-control-feedback"></i>
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-3 control-label" for="idTxtMunicipio">Município</label>
						<div class="col-sm-9 has-feedback">
							<input type="text" class="form-control form-page"
								name="municipiocli" id="txtMunicipioCli" placeholder="Município">
							<i class="fa fa-address-card form-control-feedback"></i>
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-3 control-label" for="idSelEstado">UF
						</label>
						<div class="col-sm-9 has-feedback">

							<!-- 
                        	<select id="idSelAssuntoCli" class="form-control form-page" name="selEstadocli">
                        
    	                    <c:forEach items="ufs" var="uf"> 
        	    	   			<option value="${uf}"> ${uf} </option>
            	    		</c:forEach>
                        	
                           </select>
                           -->

							<%
								List<String> ufs = (List<String>) request.getAttribute("ufs");
							%>
							<select id="idSelAssuntoCli" class="form-control form-page"
								name="selEstadocli">
								<%
									for (String uf : ufs) {
								%>
								<option value="<%=uf%>">
									<%=uf%>
								</option>
								<%
									}
								%>
							</select>
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-3 control-label" for="idTxtEmail">Email</label>
						<div class="col-sm-9 has-feedback">
							<input type="email" class="form-control form-page"
								name="emailcli" id="TxtEmailCli" placeholder="E-mail"> <i
								class="fa fa-envelope form-control-feedback"></i>
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-3 control-label" for="idpswSenha">Senha</label>
						<div class="col-sm-9 has-feedback">
							<input type="password" class="form-control form-page"
								name="senhacli" id="pswSenhaCli" placeholder="Senha"> <i
								class="fa fa-lock form-control-feedback"></i>
						</div>
					</div>
					<div class="form-group" style="position: relative;">
						<div class="col-sm-offset-3 col-sm-9">
							<button type="submit" class="btn btn-block btn-form"
								>ENVIAR</button>
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>

	<jsp:include page="template/footer2.jsp" />

</body>

</html>


<html>