<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="css/estilo.css">
    <link rel="stylesheet" type="text/css" href="css/produto.css">
    <link rel="stylesheet" type="text/css" href="css/contrast.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link href="https://fonts.googleapis.com/css?family=Aldrich" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Open+Sans" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Rajdhani" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Roboto" rel="stylesheet">
    <link rel="shortcut icon" href="./img/favicon.ico">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <script src="js/letras.js"></script>
    <script src="js/login.js"></script>
    <script src="js/autocontraste.js"></script>
    <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAPRex3VjMaJFspx-9LaeW2mkRhc5qZpTM&callback=myMap"></script>
</head>

<body style="padding-top: 240px;">

    <!--------------- MODAL LOGIN -------------------->

    <div class="modal fade" id="login" role="dialog">
        <div class="modal-dialog" role="document">
            <div class="modal-content" id="modalLogin">
                <div class="modal-header">
                    <h1 class="text-center"><i class="glyphicon glyphicon-user"></i> Login</h1>
                </div>
                <div class="modal-body">
                    <form action="index.jsp">
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
                    <p>Não é cadastrado? <a class="login-link" href="incluirCliente.jsp">Clique aqui!</a></p>
                </div>
            </div>
        </div>
    </div>
    

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
                            <label for="exampleInputEmail1">Cpf</label>
                            <input type="text" class="form-control" id="exampleInputCpf1" placeholder="Digite seu Cpf"  name ="cpfadmin"required autofocus />
                        </div>
                        <div class="form-group">
                            <label for="exampleInputPassword1">Senha</label>
                            <input type="password" class="form-control" id="exampleInputPassword1" placeholder="Digite sua senha" required autofocus name="senhaadmin"/>
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

    <nav class="navbar navbar-inverse navbar-fixed-top custom">
        <div class="container-fluid">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                        <span class="sr-only">Alternar Navegação</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                <a class="navbar-brand" href="#">ChipStore</a>
            </div>
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <div class="col-sm-3">
                    <ul class="nav navbar-nav navbar-left">
                        <li><a href="index.html">INÍCIO</a></li>
                         <li><a href="index.html">SOBRE</a></li>
                        <li><a href="index.html">CONTATO</a></li>
                    </ul>
                </div>
                <div class="col-sm-0 brand-col">
                	<ul class="nav navbar-nav navbar-left">
                		<li><a title="Diminuir Fonte" alt="Diminuir" style="font-size: 16px;" href="#"><span id="diminuir-fonte" class="glyphicon glyphicon-font"></span>-</a></li>
		   				<li><a title="Aumentar Fonte" alt="Aumentar" style="font-size: 16px;" href="#"><span id="aumentar-fonte" class="glyphicon glyphicon-font"></span>+</a></li>
                	</ul>
                </div>
            </div>
        </div>
    </nav>
</body>

</html>
