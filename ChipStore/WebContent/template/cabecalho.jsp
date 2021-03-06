<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.util.List, br.com.chipstore.model.Categoria"%>
   <!DOCTYPE html>
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
    <script type="text/javascript">
    function init_map() {
        var var_location = new google.maps.LatLng(-22.947115, -43.185613);

        var var_mapoptions = {
            center: var_location,
            zoom: 15,
            styles: [{
                    "elementType": "geometry",
                    "stylers": [{
                        "color": "#f5f5f5"
                    }]
                },
                {
                    "elementType": "labels.icon",
                    "stylers": [{
                        "visibility": "off"
                    }]
                },
                {
                    "elementType": "labels.text.fill",
                    "stylers": [{
                        "color": "#616161"
                    }]
                },
                {
                    "elementType": "labels.text.stroke",
                    "stylers": [{
                        "color": "#f5f5f5"
                    }]
                },
                {
                    "featureType": "administrative.land_parcel",
                    "elementType": "labels.text.fill",
                    "stylers": [{
                        "color": "#bdbdbd"
                    }]
                },
                {
                    "featureType": "landscape",
                    "elementType": "geometry",
                    "stylers": [{
                        "color": "#d1d1d1"
                    }]
                },
                {
                    "featureType": "landscape.man_made",
                    "elementType": "geometry",
                    "stylers": [{
                        "color": "#e4e4e4"
                    }]
                },
                {
                    "featureType": "landscape.natural",
                    "elementType": "geometry",
                    "stylers": [{
                        "color": "#d8d5fe"
                    }]
                },
                {
                    "featureType": "landscape.natural.landcover",
                    "elementType": "geometry",
                    "stylers": [{
                        "color": "#000000"
                    }]
                },
                {
                    "featureType": "poi",
                    "elementType": "geometry",
                    "stylers": [{
                        "color": "#ebe9fe"
                    }]
                },
                {
                    "featureType": "poi",
                    "elementType": "labels.text.fill",
                    "stylers": [{
                        "color": "#757575"
                    }]
                },
                {
                    "featureType": "poi.park",
                    "elementType": "geometry",
                    "stylers": [{
                        "color": "#b5affa"
                    }]
                },
                {
                    "featureType": "poi.park",
                    "elementType": "labels.text.fill",
                    "stylers": [{
                        "color": "#9e9e9e"
                    }]
                },
                {
                    "featureType": "road",
                    "elementType": "geometry",
                    "stylers": [{
                        "color": "#ffffff"
                    }]
                },
                {
                    "featureType": "road.arterial",
                    "elementType": "labels.text.fill",
                    "stylers": [{
                        "color": "#757575"
                    }]
                },
                {
                    "featureType": "road.highway",
                    "elementType": "geometry",
                    "stylers": [{
                        "color": "#c7c7c7"
                    }]
                },
                {
                    "featureType": "road.highway",
                    "elementType": "labels.text.fill",
                    "stylers": [{
                        "color": "#616161"
                    }]
                },
                {
                    "featureType": "road.local",
                    "elementType": "labels.text.fill",
                    "stylers": [{
                        "color": "#9e9e9e"
                    }]
                },
                {
                    "featureType": "transit.line",
                    "elementType": "geometry",
                    "stylers": [{
                        "color": "#e5e5e5"
                    }]
                },
                {
                    "featureType": "transit.station",
                    "elementType": "geometry",
                    "stylers": [{
                        "color": "#eeeeee"
                    }]
                },
                {
                    "featureType": "water",
                    "elementType": "geometry",
                    "stylers": [{
                        "color": "#8981f8"
                    }]
                },
                {
                    "featureType": "water",
                    "elementType": "labels.text.fill",
                    "stylers": [{
                        "color": "#9e9e9e"
                    }]
                }
            ]
        };
        var var_marker = new google.maps.Marker({
            position: var_location,
            map: var_map,
            title: "Venice"
        });

        var var_map = new google.maps.Map(document.getElementById("map-container"),
            var_mapoptions);

        var_marker.setMap(var_map);
    }

    google.maps.event.addDomListener(window, 'load', init_map);

 	
    </script>
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
                <a class="navbar-brand" href="main.jsp">ChipStore</a>
            </div>
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <div class="col-sm-3 brand-col">
                    <ul class="nav navbar-nav navbar-left">
                        <li><a href="main.jsp">IN�CIO</a></li>
                        <li><a href="#sobre" class="scroll">SOBRE</a></li>
                        <li><a href="#contato" class="scroll">CONTATO</a></li>
                    </ul>
                </div>
                
                <div class="col-sm-0 brand-col">
                	<ul class="nav navbar-nav navbar-left">
                		<li><a title="Diminuir Fonte" alt="Diminuir" style="font-size: 16px;" href="#"><span id="diminuir-fonte" class="glyphicon glyphicon-font"></span>-</a></li>
		   				<li><a title="Aumentar Fonte" alt="Aumentar" style="font-size: 16px;" href="#"><span id="aumentar-fonte" class="glyphicon glyphicon-font"></span>+</a></li>
                	</ul>
                </div>
                
                <div class="col-sm-3 search-col">
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
               <c:if test="${sessionScope.cliente != null}">
               
              <li>  
	               	<a href="/apolice-web/logout"><span class="glyphicon glyphicon-log-out"></span> Sair</a>
                </li>
            </c:if>
                <c:if test="${sessionScope.usuario == null}">
                <div class="col-sm-3">
                    <button type="button" class="btn btn-default navbar-btn" data-toggle="modal" data-target="#login" id="nav-btn-login">LOGIN</button>
                    <a href="MontarCliente" class="btn btn-default navbar-btn" id="nav-btn-login">CADASTRE-SE</a>
                    <div style="float: right;margin-top: 17px;margin-right: -20px;">                 
                    	<span style="font-size: 15px;"><a href="MontarCarrinhoVazio" class="glyphicon glyphicon-shopping-cart"></a></span>
                    </div>
                   </c:if>
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
                    <form action="ValidaLoginCliente" method="post">
                        <div class="form-group">
                            <label for="exampleInputEmail1">Email</label>
                            <input type="email" class="form-control" id="exampleInputEmail1" placeholder="Digite seu Email" name ="emailcliente" required autofocus />
                        </div>
                        <div class="form-group">
                            <label for="exampleInputPassword1">Senha</label>
                            <input type="password" class="form-control" id="exampleInputPassword1" placeholder="Digite sua senha" name ="senhacliente" required autofocus />
                        </div>
                        <button type="submit" class="btn btn-form btn-block">ENTRAR</button>
                    </form>
                </div>
                <div class="modal-footer" style="text-align: center;">
                    <p>N�o � cadastrado? <a class="login-link" href="MontarCliente">Clique aqui!</a></p>
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
                    <form action="ValidaLoginAdministrador" method="post">
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
            
            <%
            
            List<Categoria> categorias = ( List<Categoria>) session.getAttribute("categorias");
            for (Categoria c: categorias){
            
            %>
            
                <li><a href="MontarLojaProduto?codigoCategoria=<%=c.getCodigo()%>"> <%=c.getNome()%></a></li>
               
                <% } %> 
               
                
            </ul>
        </div>
    </nav>
 

</body>
</html>