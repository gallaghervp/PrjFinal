<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>ChipStore - loja Computadores</title>
</head>
<body>
<%@ include file="../template/cabecalho.jsp" %>


    <!--------------- COMPUTADORES -------------------->

   <div id="computadores" class="heading-index">
        <h1>Computadores</h1>
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
<%@ include file="../template/footer2.jsp" %>

</body>
</html>
