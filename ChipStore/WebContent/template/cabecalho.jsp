<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
 <nav class="navbar navbar-inverse navbar-fixed-top custom">
        <div class="container-fluid">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                    <span class="sr-only">Alternar Navegação</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="index.jsp">ChipStore</a>
            </div>
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <div class="col-sm-3 brand-col">
                    <ul class="nav navbar-nav navbar-left">
                        <li><a href="index.jsp">INÍCIO</a></li>
                        <li><a href="#sobre" class="scroll">SOBRE</a></li>
                        <li><a href="#contato" class="scroll">CONTATO</a></li>
                    </ul>
                </div>
                <div class="col-sm-4 search-col">
                    <form class="navbar-form" role="search">
                        <div class="input-group" style="width:93%;">
                            <input type="text" id="busca" class="form-control search-form" placeholder="Buscar">
                            <div class="input-group-btn" style="display:block">
                                <button class="btn btn-default search-btn" type="submit" style="display:inline-block">
                                    <i class="glyphicon glyphicon-search"></i>
                                </button>
                            </div>
                        </div>
                    </form>
                </div>
                <div class="col-sm-3">
                    <button type="button" class="btn btn-default navbar-btn" data-toggle="modal" data-target="#login" id="nav-btn-login">LOGIN</button>
                    <a href="incluirCliente.jsp" class="btn btn-default navbar-btn" id="nav-btn-login">CADASTRE-SE</a>
                    <button type="button" class="btn btn-default navbar-btn" data-toggle="modal" data-target="#loginadm" id="nav-btn-login">ADM</button>                 
                    <i class="glyphicon glyphicon-shopping"></i>
                </div>
            </div>
        </div>
    </nav>
    
    <!--------------- MODAL LOGIN -------------------->

    <div class="modal fade" id="login" role="dialog">
        <div class="modal-dialog" role="document">
            <div class="modal-content" id="modalLogin">
                <div class="modal-header">
                    <h1 class="text-center"><i class="glyphicon glyphicon-user"></i> Login</h1>
                </div>
                <div class="modal-body">
                    <form action="indexLogado.jsp">
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
	

    <!--------------- CAROUSEL -------------------->

    <div id="myCarousel" class="carousel slide" data-ride="carousel" width="100%">
        <ol class="carousel-indicators">
            <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
            <li data-target="#myCarousel" data-slide-to="1"></li>
            <li data-target="#myCarousel" data-slide-to="2"></li>
        </ol>
        <div class="carousel-inner">
            <div class="item active" style="background-image: url(img/capa1.png)">
            </div>
            <div class="item" style = "background-image: url(img/capa2.png)">
            </div>
            <div class="item" style = "background-image: url(img/capa3.png)">
            </div>
        </div>
        <a class="left carousel-control" href="#myCarousel" data-slide="prev">
            <span class="glyphicon glyphicon-chevron-left"></span>
            <span class="sr-only">Previous</span>
        </a>
        <a class="right carousel-control" href="#myCarousel" data-slide="next">
            <span class="glyphicon glyphicon-chevron-right"></span>
            <span class="sr-only">Next</span>
        </a>
    </div>


    <!--------------- COLUNA HORIZONTAL -------------------->

    <nav class="navbar navbar-inverse">
        <div class="container-fluid">
            <div class="navbar-header">
                <a class="navbar-brand" href="#">CATEGORIA</a>
            </div>
            <ul class="nav navbar-nav navbar-left">
                <li><a href="lojaCelulares.jsp"> Celulares</a></li>
                <li><a href="lojaComputadores.jsp"> Computadores</a></li>
                <li><a href="lojaAcessorios.jsp"> Acessórios</a></li>
            </ul>
        </div>
    </nav>


</body>
</html>