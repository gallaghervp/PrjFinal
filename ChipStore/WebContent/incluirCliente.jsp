<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>ChipStore - Incluir Cliente</title>
</head>
<body>

<%@ include file="../template/cabecalho2.jsp" %>


	<!--------------- CADASTRO CLIENTE -------------------->
	
    <div class="container form-container">
        <div class="row">
            <div class="form-block">
                <form action="IncluirCliente" method="post" class="form-horizontal" style="margin-right:40px;">
                    <h2 class="form-heading">Cadastrar</h2>
                    <hr>
                    <div class="form-group">
                        <label class="col-sm-3 control-label" for="idTxtNome">Nome</label>
                        <div class="col-sm-9 has-feedback">
                            <input type="text" class="form-control form-page" name="nomecli" id="txtNomeCli" placeholder="Nome">
                            <i class="fa fa-pencil form-control-feedback"></i>
                        </div>
                    </div>
                    <div class="form-group">
                            <label class="col-sm-3 control-label" for="idDteNascimento">Data de Nascimento:</label><br>
                            <div class="col-sm-9 has-feedback">
                                <input name="datacli" max="2018-01-01" type="date" id="txtDataCli">
                            </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-3 control-label" for="idTxtCpf">CPF</label>
                        <div class="col-sm-9 has-feedback">
                            <input type="text" class="form-control form-page" name="cpfcli" id="txtCpfCli" maxlength="11" placeholder="xxx.xxx.xxx-xx">
                            <i class="fa fa-pencil form-control-feedback"></i>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-3 control-label" for="idTxtRg">RG</label>
                        <div class="col-sm-9 has-feedback">
                            <input type="text" class="form-control form-page" name="rgcli" id="txtRgCli" maxlength="11" placeholder="xxxxxxxx-x">
                            <i class="fa fa-pencil form-control-feedback"></i>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-3 control-label" for="idTxtTel">Telefone</label>
                        <div class="col-sm-9 has-feedback">
                            <input type="text" class="form-control form-page" name="telcli" id="txtTelCli" maxlength="10" placeholder="(xx) xxxx-xxxx">
                            <i class="fa fa-phone form-control-feedback"></i>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-3 control-label" for="idTxtEndereco">Endereço</label>
                        <div class="col-sm-9 has-feedback">
                            <input type="text" class="form-control form-page" name="enderecocli" id="txtEnderecoCli" placeholder="Endereço">
                            <i class="fa fa-address-card form-control-feedback"></i>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-3 control-label" for="idTxtComplemento">Complemento</label>
                        <div class="col-sm-9 has-feedback">
                            <input type="text" class="form-control form-page" name="complementocli" id="txtComplementoCli" placeholder="Complemento">
                            <i class="fa fa-address-card form-control-feedback"></i>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-3 control-label" for="idTxtBairro">Bairro</label>
                        <div class="col-sm-9 has-feedback">
                            <input type="text" class="form-control form-page" name="bairrocli" id="txtBairroCli" placeholder="Bairro">
                            <i class="fa fa-address-card form-control-feedback"></i>
                        </div>
                    </div>
                       <div class="form-group">
                        <label class="col-sm-3 control-label" for="idTxtMunicipio">Município</label>
                        <div class="col-sm-9 has-feedback">
                            <input type="text" class="form-control form-page" name="municipiocli" id="txtMunicipioCli" placeholder="Município">
                            <i class="fa fa-address-card form-control-feedback"></i>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-3 control-label" for="idSelEstado">UF </label>
                        <div class="col-sm-9 has-feedback">
                            <select id="idSelAssuntoCli" class="form-control form-page" name="selEstadocli">
                                    <option>Selecione</option>
                                    <option value="AC">Acre</option>
                                    <option value="AL">Alagoas</option>
                                    <option value="AP">Amapá</option>
                                    <option value="AM">Amazonas</option>
                                    <option value="BA">Bahia</option>
                                    <option value="CE">Ceará</option>
                                    <option value="DF">Distrito Federal</option>
                                    <option value="ES">Espírito Santo</option>
                                    <option value="GO">Goiás</option>
                                    <option value="MA">Maranhão</option>
                                    <option value="MT">Mato Grosso</option>
                                    <option value="MS">Mato Grosso do Sul</option>
                                    <option value="MG">Minas Gerais</option>
                                    <option value="PA">Pará</option>
                                    <option value="PB">Paraíba</option>
                                    <option value="PR">Paraná</option>
                                    <option value="PE">Pernambuco</option>
                                    <option value="PI">Piauí</option>
                                    <option value="RJ">Rio de Janeiro</option>
                                    <option value="RN">Rio Grande do Norte</option>
                                    <option value="RS">Rio Grande do Sul</option>
                                    <option value="RO">Rondônia</option>
                                    <option value="RR">Roraima</option>
                                    <option value="SC">Santa Catarina</option>
                                    <option value="SP">São Paulo</option>
                                    <option value="SE">Sergipe</option>
                                    <option value="TO">Tocantins</option>
                                </select>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-3 control-label" for="idTxtEmail">Email</label>
                        <div class="col-sm-9 has-feedback">
                            <input type="email" class="form-control form-page" name="emailcli" id="TxtEmailCli" placeholder="E-mail">
                            <i class="fa fa-envelope form-control-feedback"></i>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-3 control-label" for="idpswSenha">Senha</label>
                        <div class="col-sm-9 has-feedback">
                            <input type="password" class="form-control form-page" name="senhacli" id="pswSenhaCli" placeholder="Senha">
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

<%@ include file="../template/footer2.jsp" %>

</body>

</html>
