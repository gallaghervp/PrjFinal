<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <title>ChipStore - Principal</title>
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
    <script src="js/login.js"></script>
    <script src="js/produto.js"></script>
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

    <!------------- Produto ------------------>

    <br/>
    <br/>
    <br/>
    <div class="container">
        	<div class="row">
               <div class="col-xs-4 item-photo">
                    <img style="max-width:100%;" src="img/iphone.png" />
                </div>
                <div class="col-xs-5" style="border:0px solid gray">
                    <!-- Dados do Vendedor e produto -->
                    <h3>iPhone 8 256GB Tela 4.7" IOS 11 4G Wi-Fi câmera 12MP - Apple</h3>    
                    <h5 style="color:#337ab7">vendido por <a href="#">Apple</a> · <small style="color:#337ab7">(587 Vendas)</small></h5>
        
                    <!-- Precios -->
                    <h6 class="title-price"><small>Preço</small></h6>
                    <h3 style="margin-top:0px;">R$3.599,00</h3>
        
                    <!-- Detalhes do produto-->
                    <div class="section">
                        <h6 class="title-attr" style="margin-top:15px;" ><small>COR</small></h6>                    
                        <div>
                            <div class="attr" style="width:25px;background:#5a5a5a;"></div>
                            <div class="attr" style="width:25px;background:	#61490d;"></div>
                        </div>
                    </div>
                    <div class="section" style="padding-bottom:5px;">
                        <h6 class="title-attr"><small>Memória</small></h6>                    
                        <div>
                            <div class="attr2">16 GB</div>
                            <div class="attr2">32 GB</div>
                        </div>
                    </div>   
                    <div class="section" style="padding-bottom:20px;">
                        <h6 class="title-attr"><small>Quantidade</small></h6>                    
                        <div>
                            <div class="btn-minus"><span class="glyphicon glyphicon-minus"></span></div>
                            <input value="1" />
                            <div class="btn-plus"><span class="glyphicon glyphicon-plus"></span></div>
                        </div>
                    </div>                
        
                    <!-- Botões de compra -->
                    <div class="section" style="padding-bottom:20px;">
                        <a href="carrinho.jsp"><button type="button" class="btn btn-primary"><span class="glyphicon glyphicon-shopping-cart"></span>Adicionar ao carrinho</button></a>
                    </div>                                        
                </div>                              
        
                <div class="col-xs-9">
                    <ul class="menu-items">
                        <li class="active">Detalhes do produto</li>
                    </ul>
                    <div style="width:100%;border-top:1px solid #A8A2FA">
                        <p style="padding:15px;">
                            <small>
                           iPhone 8 Dourado 256GB <br/>

                            Uma nova geração do iPhone.<br/>

                            Design todo em vidro. Câmeras avançadas. Chip A11 Bionic. Recarga sem fio¹.<br/>
                            O iPhone 8 é uma nova geração do iPhone. Ele tem o vidro mais resistente da categoria, moldura reforçada de alumínio aeroespacial, recarga sem fio integrada¹ e resistência à água e poeira². <br/> A tela Retina HD de 4,7 polegadas tem True Tone³ e a câmera de 12 MP conta com novo sensor e um processador de imagem avançado. Tudo isso só é possível graças ao A11 Bionic, o chip mais inteligente e poderoso em um smartphone, que também dá vida a apps e jogos incríveis em realidade aumentada. <br/> O iPhone 8 é brilhante. Em todos os sentidos. <br/><br/>

                            Lista das principais características <br/><br/>
                            • Tela Retina HD de 4,7 polegadas com True Tone³<br/>
                            • Design em vidro e alumínio resistente à água e poeira²<br/>
                            • Câmera de 12 MP com estabilização óptica de imagem e vídeo 4K a até 60 qps<br/>
                            • Câmera FaceTime HD de 7 MP com flash Retina para selfies mais bonitas¿<br/>
                            • Touch ID para autenticação segura <br/>
                            • A11 Bionic, o chip mais inteligente e poderoso em um smartphone<br/>
                            • Recarga sem fio - funciona com carregadores padrão Qi¹<br/>


                            
                            </small>
                        </p>
                        <small>
                            <ul>
                                <li>LCD IPS - 4.7</li>
                                <li>Available on GSM, AT T, T-Mobile and other carriers</li>
                                <li>Compatible with GSM 850 / 900 / 1800; HSDPA 850 / 1900 / 2100 LTE; 700 MHz Class 17 / 1700 / 2100 networks</li>
                                <li>MicroUSB and USB connectivity</li>
                                <li>Interfaces with Wi-Fi 802.11 a/b/g/n/ac, dual band and Bluetooth</li>
                                <li>Wi-Fi hotspot to keep other devices online when a connection is not available</li>
                                <li>SMS, MMS, email, Push Mail, IM and RSS messaging</li>
                                <li>Front-facing camera features autofocus, an LED flash, dual video call capability and a sharp 4128 x 3096 pixel picture</li>
                                <li>Features 16 GB memory and 2 GB RAM</li>
                                <li>Upgradeable Jelly Bean v4.2.2 to Jelly Bean v4.3 Android OS</li>
                                <li>17 hours of talk time, 350 hours standby time on one charge</li>
                                <li>Available in white or black</li>
                                <li>Model I337</li>
                                <li>Package includes phone, charger, battery and user manual</li>
                                <li>Phone is 5.38 inches high x 2.75 inches wide x 0.13 inches deep and weighs a mere 4.59 oz </li>
                            </ul>  
                        </small>
                    </div>
                </div>		
            </div>
        </div>        

<%@ include file="../template/sobre.jsp" %>
<%@ include file="../template/contato.jsp" %>
<!--------------- MAPA -------------------->


     <div id="map-container" style="width:100%;height:400px;"></div>
     
<%@ include file="../template/footer.jsp" %>


   
</body>
</html>
  