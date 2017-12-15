<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <title>ChipStore - Cadastro Profissional</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="css/estilo.css">
    <link rel="stylesheet" type="text/css" href="css/produtos.css">
    <link rel="stylesheet" type="text/css" href="css/contrast.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link href="https://fonts.googleapis.com/css?family=Aldrich" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Open+Sans" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Rajdhani" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Roboto" rel="stylesheet">
    <link rel="shortcut icon" href="img/favicon.ico">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <script src="js/login.js"></script>
    <script src="js/autocontraste.js"></script>
	<script src="js/letras.js"></script>
</head>

<body>

<!----------------- LOGIN ADM ------------------->

    <div class="modal fade" id="loginadm" role="dialog">
        <div class="modal-dialog" role="document">
            <div class="modal-content" id="modalLogin">
                <div class="modal-header">
                    <h1 class="text-center"><i class="glyphicon glyphicon-user"></i> Login Administrativo</h1>
                </div>
                <div class="modal-body">
                    <form action="incluirFabricante.jsp">
                        <div class="form-group">
                            <label for="exampleInputEmail1">Email</label>
                            <input type="email" class="form-control" id="exampleInputEmail1" placeholder="Digite seu Email" required autofocus />
                        </div>
                        <div class="form-group">
                            <label for="exampleInputPassword1">Senha</label>
                            <input type="password" class="form-control" id="exampleInputPassword1" placeholder="Digite sua senha" required autofocus />
                        </div>
                        <button type="submit" class="btn btn-form btn-block">ENTRAR</button>
                    </form>
                </div>
                <div class="modal-footer" style="text-align: center;">
                    <p>Cadastro somente com o ADM do site!</p>
                </div>
            </div>
        </div>
    </div>
	

<%@ include file="../template/cabecalho2.jsp" %>

    <div class="modal fade" id="logincadastro" role="dialog">
        <div class="modal-dialog" role="document">
            <div class="modal-content" id="modalLogin">
                <div class="modal-header">
                    <h1 class="text-center"><i class="glyphicon glyphicon-user"></i> Login</h1>
                </div>
                <div class="modal-body">
                    <form action="indexLogado.jsp">
                        <div class="form-group">
                            <label for="exampleInputEmail1">Email</label>
                            <input type="email" class="form-control" id="exampleInputEmail1" placeholder="Digite seu Email">
                        </div>
                        <div class="form-group">
                            <label for="exampleInputPassword1">Senha</label>
                            <input type="password" class="form-control" id="exampleInputPassword1" placeholder="Digite sua senha">
                        </div>
                        <button type="submit" class="btn btn-form btn-block">ENTRAR</button>
                    </form>
                </div>
                <div class="modal-footer" style="text-align: center;">
                    <p>N�o � cadastrado? <a class="login-link" href="incluirUsuario.jsp">Clique aqui!</a></p>
                </div>
            </div>
        </div>
    </div>
    
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
                        <label class="col-sm-3 control-label" for="idTxtEndereco">Endere�o</label>
                        <div class="col-sm-9 has-feedback">
                            <input type="text" class="form-control form-page" name="enderecocli" id="txtEnderecoCli" placeholder="Endere�o">
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
                        <label class="col-sm-3 control-label" for="idTxtMunicipio">Munic�pio</label>
                        <div class="col-sm-9 has-feedback">
                            <input type="text" class="form-control form-page" name="municipiocli" id="txtMunicipioCli" placeholder="Munic�pio">
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

	<%@ include file="../template/footer.jsp" %>
    
=======
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link href="https://fonts.googleapis.com/css?family=Aldrich" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Open+Sans" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Rajdhani" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Roboto" rel="stylesheet">
    <link rel="shortcut icon" href="img/favicon.ico">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <script src="js/login.js"></script>
</head>

<body>
    <nav class="navbar navbar-inverse navbar-fixed-top custom">
        <div class="container-fluid">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                        <span class="sr-only">Alternar Navega��o</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                <a class="navbar-brand" href="#">ChipJobs</a>
            </div>
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav navbar-left">
                    <li><a href="index.jsp">IN�CIO</a></li>
                </ul>
                <div class="col-sm-3">
                    <button type="button" class="btn btn-default navbar-btn" data-toggle="modal" data-target="#logincadastro" id="nav-btn-login">LOGIN</button>
                </div>
            </div>
        </div>
    </nav>

    <div class="modal fade" id="logincadastro" role="dialog">
        <div class="modal-dialog" role="document">
            <div class="modal-content" id="modalLogin">
                <div class="modal-header">
                    <h1 class="text-center"><i class="glyphicon glyphicon-user"></i> Login</h1>
                </div>
                <div class="modal-body">
                    <form action="indexLogado.jsp">
                        <div class="form-group">
                            <label for="exampleInputEmail1">Email</label>
                            <input type="email" class="form-control" id="exampleInputEmail1" placeholder="Digite seu Email">
                        </div>
                        <div class="form-group">
                            <label for="exampleInputPassword1">Senha</label>
                            <input type="password" class="form-control" id="exampleInputPassword1" placeholder="Digite sua senha">
                        </div>
                        <button type="submit" class="btn btn-form btn-block">ENTRAR</button>
                    </form>
                </div>
                <div class="modal-footer" style="text-align: center;">
                    <p>N�o � cadastrado? <a class="login-link" href="incluirUsuario.jsp">Clique aqui!</a></p>
                </div>
            </div>
        </div>
    </div>

    <div class="parallax-container" id="parallaxHead" data-speed="6" data-type="background">
        <div class="container">
            <div class="row">
                <i class="fa fa-edit"></i>
                <h2 class="page-heading">CADASTRAR</h2>
                <ol class="breadcrumb">
                    <li><a href="index.jsp">In�cio</a></li>
                    <li><a href="#">Login & Cadastro</a></li>
                    <li class="active-breadcrumb">P�gina de Cadastro</li>
                </ol>
            </div>
        </div>
    </div>

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
                        <label class="col-sm-3 control-label" for="idTxtEndereco">Endere�o</label>
                        <div class="col-sm-9 has-feedback">
                            <input type="text" class="form-control form-page" name="enderecocli" id="txtEnderecoCli" placeholder="Endere�o">
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
                        <label class="col-sm-3 control-label" for="idTxtMunicipio">Munic�pio</label>
                        <div class="col-sm-9 has-feedback">
                            <input type="text" class="form-control form-page" name="municipiocli" id="txtMunicipioCli" placeholder="Munic�pio">
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


    <footer class="footer">
        <div class="container">
            <div class="col-sm-4">
                <div class="row">
                    <h3>Acesso r�pido</h3>
                    <ul class="footerAccess">
                        <li><i class="fa fa-angle-double-right icon-link" aria-hidden="true"></i><a href="index.jsp" class="footer-link"> Inicio</a></li>
                    </ul>
                </div>
            </div>
            <div class="col-sm-4">
                <div class="row">
                    <h3>Social</h3>
                    <div class="footerSocial">
                        <a href="https://www.facebook.com/boladavezbr/"><i class="fa fa-facebook fa-2x icon-square" aria-hidden="true"></i></a>
                        <a href="#"><i class="fa fa-google-plus fa-2x icon-square" aria-hidden="true"></i></a>
                        <a href="#"><i class="fa fa-instagram fa-2x icon-square" aria-hidden="true"></i></a>
                        <a href="#"><i class="fa fa-twitter fa-2x icon-square" aria-hidden="true"></i></a>
                    </div>
                </div>
            </div>
            <div class="col-sm-4">
                <div class="row">
                    <h3>Curta nossa p�gina</h3>
                    <div class="fb-page" data-href="https://www.facebook.com/ChipJobs-507113656303453/" data-tabs="timeline" data-width="450" data-height="100" data-small-header="false" data-adapt-container-width="false" data-hide-cover="false" data-show-facepile="true">
                        <blockquote cite="https://www.facebook.com/ChipJobs-507113656303453/" class="fb-xfbml-parse-ignore">
                            <a href="https://www.facebook.com/ChipJobs-507113656303453/">
                                <h1 class="fb">Curta nossa p�gina</h1>ChipJobs</a>
                        </blockquote>
                    </div>
                </div>
            </div>
        </div>
    </footer>
    <div style="padding:10px;background-color: black;color:lightgray;font-family:Aldrich;">
        <p style="margin:0;">� Copyright 2017 <a style="color:white;font-family:Aldrich;" href="chipjobs@chipjobs.com.br">ChipJobs</a></p>
    </div>
>>>>>>> branch 'master' of https://github.com/gallaghervp/PrjFinal.git
</body>

</html>
