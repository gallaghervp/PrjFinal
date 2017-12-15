<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <title>ChipStore - Finalizar Compra</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="css/contrast.css">
    <link rel="stylesheet" type="text/css" href="css/estilo.css">
    <link rel="stylesheet" type="text/css" href="css/produtos.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link href="https://fonts.googleapis.com/css?family=Aldrich" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Open+Sans" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Rajdhani" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Roboto" rel="stylesheet">
    <link rel="shortcut icon" href="./img/favicon.ico">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <script src="js/login.js"></script>
    <script src="js/autocontraste.js"></script>
	<script src="js/letras.js"></script>
</head>

<body style="padding-top: 240px;">

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


    <div class="container">
        <div class="row">
            <div class="col-sm-9 col-sm-offset-3 main">
                <br>
                <div class="card-dados-container">
                    <form class="form-horizontal" role="form">
                        <legend>Pagamento</legend>
                        <div class="form-group">
                            <label class="col-sm-3 control-label" for="card-holder-name">Nome no cart�o</label>
                            <div class="col-sm-9">
                                <input type="text" class="form-control" name="card-holder-name" id="card-holder-name" placeholder="Card Holder's Name">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label" for="card-number">N�mero do cart�o</label>
                            <div class="col-sm-9">
                                <input type="text" class="form-control" name="card-number" id="card-number" placeholder="Debit/Credit Card Number">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label" for="expiry-month">Data de validade</label>
                            <div class="col-sm-9">
                                <div class="row">
                                    <div class="col-xs-3">
                                        <select class="form-control col-sm-2" name="expiry-month" id="expiry-month">
                <option>Month</option>
                <option value="01">Jan (01)</option>
                <option value="02">Feb (02)</option>
                <option value="03">Mar (03)</option>
                <option value="04">Apr (04)</option>
                <option value="05">May (05)</option>
                <option value="06">June (06)</option>
                <option value="07">July (07)</option>
                <option value="08">Aug (08)</option>
                <option value="09">Sep (09)</option>
                <option value="10">Oct (10)</option>
                <option value="11">Nov (11)</option>
                <option value="12">Dec (12)</option>
              </select>
                                    </div>
                                    <div class="col-xs-3">
                                        <select class="form-control" name="expiry-year">
                <option value="13">2013</option>
                <option value="14">2014</option>
                <option value="15">2015</option>
                <option value="16">2016</option>
                <option value="17">2017</option>
                <option value="18">2018</option>
                <option value="19">2019</option>
                <option value="20">2020</option>
                <option value="21">2021</option>
                <option value="22">2022</option>
                <option value="23">2023</option>
              </select>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label" for="cvv">Cart�o CVV</label>
                            <div class="col-sm-3">
                                <input type="text" class="form-control" name="cvv" id="cvv" placeholder="Security Code">
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-sm-offset-3 col-sm-9">
                                <a href="#"><button type="button" class="btn btn-success">Finalizar Compra</button></a>
                                <a href="carrinho.jsp"><button type="button" class="btn btn-success">Carrinho</button></a>
                            </div>
                        </div>
                    </form>




                </div>
            </div>
        </div>
    </div>
    
    <%@ include file="../template/footer2.jsp" %>
=======
    <link rel="stylesheet" type="text/css" href="css/estilo.css">
    <link rel="stylesheet" type="text/css" href="css/produtos.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link href="https://fonts.googleapis.com/css?family=Aldrich" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Open+Sans" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Rajdhani" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Roboto" rel="stylesheet">
    <link rel="shortcut icon" href="./img/favicon.ico">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <script src="js/login.js"></script>
</head>

<body style="padding-top: 240px;">
    <nav class="navbar navbar-inverse navbar-fixed-top custom">
        <div class="container-fluid">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                        <span class="sr-only">Alternar Navega��o</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                <a class="navbar-brand" href="index.jsp">ChipJobs</a>
            </div>
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <div class="col-sm-3 brand-col">
                    <ul class="nav navbar-nav navbar-left">
                        <li><a href="indexLogado.jsp">IN�CIO<span class="sr-only">(current)</span></a></li>
                    </ul>
                </div>
                <div class="col-sm-4 search-col">
                    <form class="navbar-form" role="search">
                        <div class="input-group" style="width:93%;">
                            <input type="text" class="form-control search-form" placeholder="Buscar">
                            <div class="input-group-btn" style="display:block">
                                <button class="btn btn-default search-btn" type="submit" style="display:inline-block">
                                        <i class="glyphicon glyphicon-search"></i>
                                    </button>
                            </div>
                        </div>
                    </form>
                </div>
                <div class="col-sm-3">
                    <ul class="nav navbar-nav navbar-left">
                        <li class="fa fa-user fa-2x nav-login" aria-hidden="true"></li>
                        <li><a href="index.jsp" class="a-login">Ol�, Sair!</a></li>
                    </ul>
                </div>
            </div>
        </div>
        <div class="parallax-container" id="parallaxUser" data-speed="6" data-type="background">
            <div class="container">
                <div class="row">
                    <i class="fa fa-edit"></i>
                    <h2 class="page-heading">MINHA P�GINA</h2>
                    <ol class="breadcrumb">
                        <li><a href="index.jsp">In�cio</a></li>
                        <li><a href="#">Login & Cadastro</a></li>
                        <li class="active-breadcrumb">Minha P�gina</li>
                    </ol>
                </div>
            </div>
        </div>
    </nav>



    <div class="container">
        <div class="row">
            <div class="col-sm-3 col-md-2 sidebar">
                <ul class="nav nav-sidebar">
                    <li><a class="sidebar-brand" href="#">Ol�, Chris! <span class="sr-only">(current)</span></a></li>
                </ul>
            </div>
            <div class="col-sm-9 col-sm-offset-3 main">


                <br>
                <div class="card-dados-container">
                    <form class="form-horizontal" role="form">
                        <legend>Pagamento</legend>
                        <div class="form-group">
                            <label class="col-sm-3 control-label" for="card-holder-name">Nome no cart�o</label>
                            <div class="col-sm-9">
                                <input type="text" class="form-control" name="card-holder-name" id="card-holder-name" placeholder="Card Holder's Name">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label" for="card-number">N�mero do cart�o</label>
                            <div class="col-sm-9">
                                <input type="text" class="form-control" name="card-number" id="card-number" placeholder="Debit/Credit Card Number">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label" for="expiry-month">Data de validade</label>
                            <div class="col-sm-9">
                                <div class="row">
                                    <div class="col-xs-3">
                                        <select class="form-control col-sm-2" name="expiry-month" id="expiry-month">
                <option>Month</option>
                <option value="01">Jan (01)</option>
                <option value="02">Feb (02)</option>
                <option value="03">Mar (03)</option>
                <option value="04">Apr (04)</option>
                <option value="05">May (05)</option>
                <option value="06">June (06)</option>
                <option value="07">July (07)</option>
                <option value="08">Aug (08)</option>
                <option value="09">Sep (09)</option>
                <option value="10">Oct (10)</option>
                <option value="11">Nov (11)</option>
                <option value="12">Dec (12)</option>
              </select>
                                    </div>
                                    <div class="col-xs-3">
                                        <select class="form-control" name="expiry-year">
                <option value="13">2013</option>
                <option value="14">2014</option>
                <option value="15">2015</option>
                <option value="16">2016</option>
                <option value="17">2017</option>
                <option value="18">2018</option>
                <option value="19">2019</option>
                <option value="20">2020</option>
                <option value="21">2021</option>
                <option value="22">2022</option>
                <option value="23">2023</option>
              </select>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label" for="cvv">Cart�o CVV</label>
                            <div class="col-sm-3">
                                <input type="text" class="form-control" name="cvv" id="cvv" placeholder="Security Code">
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-sm-offset-3 col-sm-9">
                                <a href="#"><button type="button" class="btn btn-success">Finalizar Compra</button></a>
                                <a href="carrinhoLogado.jsp"><button type="button" class="btn btn-success">Carrinho</button></a>
                            </div>
                        </div>
                    </form>




                </div>
            </div>
        </div>
    </div>
>>>>>>> branch 'master' of https://github.com/gallaghervp/PrjFinal.git

</body>

</html>
