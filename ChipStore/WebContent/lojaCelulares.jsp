<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<<<<<<< HEAD
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

<title>ChipStore - Principal</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="css/estilo.css">
    <link rel="stylesheet" type="text/css" href="css/produto.css">
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
    <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAPRex3VjMaJFspx-9LaeW2mkRhc5qZpTM&callback=myMap"></script>
    <script type="text/javascript">
        $(document).ready(function() {
            $window = $(window);

            $('section[data-type="background"]').each(function() {
                var $scroll = $(this);

                $(window).scroll(function() {
                    var yPos = -($window.scrollTop() / $scroll.data('speed'));
                    var coords = '50% ' + yPos + 'px';
                    $scroll.css({
                        backgroundPosition: coords
                    });
                });
            });
        });

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
<%@ include file="../template/cabecalho.jsp" %>


    <!--------------- Celulares -------------------->

   <div id="celulares" class="heading-index">
        <h1>Celulares</h1>
    </div>
    
   <div class="container">
	<div class="row">
    	<!-- Inicio Vitrine -->
  		<div class="col-md-3 col-sm-6">
    		<span class="thumbnail">
      		 <a href="celular.jsp"><img src="img/iphone.png" alt="Imagem de um Iphone 8"></a> 
      			<h4>iPhone 8 256GB </h4>
      			
      			<p>iPhone 8 256GB Tela 4.7" IOS 11 4G Wi-Fi câmera 12MP - Apple </p>
      			<hr class="line">
      			<div class="row">
      				<div class="col-md-6 col-sm-6">
      					<p class="price">R$3.599,00</p>
      				</div>
      				<div class="col-md-6 col-sm-6">
      					 <a href="carrinho.jsp"><button type="button" class="btn btn-primary"><span class="glyphicon glyphicon-shopping-cart"></span>Comprar</button></a>                     
      				</div>	
      			</div>
    		</span>
  		</div>
  		<div class="col-md-3 col-sm-6">
    		<span class="thumbnail">
      			<img src="img/pcdell.jpg" alt="Imagem de um PC DELL">
      			<h4>Computador Dell Inspiron </h4>
      			
      			<p>Computador Dell Inspiron 3268-D05P Intel Pentium Dual Core 4GB 1TB - Linux  </p>
      			<hr class="line">
      			<div class="row">
      				<div class="col-md-6 col-sm-6">
      					<p class="price">R$1.209,00</p>
      				</div>
      				<div class="col-md-6 col-sm-6">
      					 <a href="carrinho.jsp"><button type="button" class="btn btn-primary"><span class="glyphicon glyphicon-shopping-cart"></span>Comprar</button></a>                     
      				</div>	
      			</div>
    		</span>
  		</div>
  		<div class="col-md-3 col-sm-6">
    		<span class="thumbnail">
      			<img src="img/tablet.png" alt="Imagem de um tablet">
      			<h4>Tablet Samsung Galaxy Tab </h4>
      			
      			<p>Tablet Samsung Galaxy Tab T113 8GB - Preto </p>
      			<hr class="line">
      			<div class="row">
      				<div class="col-md-6 col-sm-6">
      					<p class="price">R$999,00</p>
      				</div>
      				<div class="col-md-6 col-sm-6">
      					 <a href="carrinho.jsp"><button type="button" class="btn btn-primary"><span class="glyphicon glyphicon-shopping-cart"></span>Comprar</button></a>                      
      				</div>	
      			</div>
    		</span>
  		</div>
  		<div class="col-md-3 col-sm-6">
    		<span class="thumbnail">
      			<img src="img/hd.png" alt="Imagem de um Iphone 8">
      			<h4>iPhone 8 256GB </h4>
      			
      			<p>HD Externo Portátil Samsung M3 Portable 1TB Preto </p>
      			<hr class="line">
      			<div class="row">
      				<div class="col-md-6 col-sm-6">
      					<p class="price">R$429,90</p>
      				</div>
      				<div class="col-md-6 col-sm-6">
      					 <a href="carrinho.jsp"><button type="button" class="btn btn-primary"><span class="glyphicon glyphicon-shopping-cart"></span>Comprar</button></a>                       
      				</div>	
      			</div>
    		</span>
  		</div>
  		<!-- END PRODUCTS -->
	</div>
</div>

   
<%@ include file="../template/sobre.jsp" %>
<%@ include file="../template/contato.jsp" %>
<!--------------- MAPA -------------------->


     <div id="map-container" style="width:100%;height:400px;"></div>
     
<%@ include file="../template/footer.jsp" %>

</body>
</html>
