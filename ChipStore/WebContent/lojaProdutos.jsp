<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"
    import="java.util.List, br.com.chipstore.model.Produto"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>ChipStore - Categoria</title>
</head>
<body>

	<jsp:include page="template/cabecalho.jsp" />


    <!--------------- Acessórios -------------------->
<%
	int quantidadeLinhas = 1;
	int quantidadeProdutoPorLinha = 0;
	int sobraProdutos = 0;
	
	List <Produto> produtos = (List <Produto>) request.getAttribute("produtos");
	
	if (produtos.size() < 4) {
		quantidadeLinhas = 1;
		quantidadeProdutoPorLinha = produtos.size();
	} else {
		quantidadeLinhas = produtos.size() / 4;
		sobraProdutos = produtos.size() % 4;
	}
	
%>
   <div id="acessorios" class="heading-index">
        <h1>Acessórios</h1>
    </div>
    
   <div class="container">

<%
	if (quantidadeLinhas == 0) {
%>
		<div class="row">
			<p>Produtos nao encontrados</p>
		</div>
		
<%  } else  if (quantidadeLinhas == 1) { %>		
		<div class="row">
<%
		for (int j=0; j < produtos.size(); j++) {
			Produto produto = produtos.get(j);
%>
	    	<!-- Inicio Vitrine -->
	  		<div class="col-md-3 col-sm-6">
	    		<span class="thumbnail">
	      		 <a href="CarregarProduto?id=<%=produto.getId() %>"><img src="img/<%=produto.getId()%>.png" alt="Imagem de <%=produto.getModelo() %>"></a> 
	      			<h4><%=produto.getNome()%></h4>
	      			
	      			<p><%=produto.getModelo()%></p>
	      			<hr class="line">
	      			<div class="row">
	      				<div class="col-md-6 col-sm-6">
	      					<p class="price"><%=produto.getPreco() %></p>
	      				</div>
	      				<div class="col-md-6 col-sm-6">
	      					 <a href="MontarCarrinho2?id=<%=produto.getId() %>"><button type="button" class="btn btn-primary"><span class="glyphicon glyphicon-shopping-cart"></span>Comprar</button></a>                     
	      				</div>	
	      			</div>
	    		</span>
	  		</div>
		<% } %>
	
		</div> <!-- fechar div "row" -->	

	<% } else { 
		
		for (int i=0; i < quantidadeLinhas; i++) {
	%>
			<div class="row">
			<%
				for (int j=0; j < 4; j++) {
					Produto produto = produtos.get(i+j);
			%>
		    	<!-- Inicio Vitrine -->
		  		<div class="col-md-3 col-sm-6">
		    		<span class="thumbnail">
		      		 <a href="CarregarProduto?id=<%=produto.getId() %>"><img src="img/<%=produto.getId()%>.png" alt="Imagem de <%=produto.getModelo() %>"></a> 
		      			<h4><%=produto.getNome()%></h4>
		      			
		      			<p><%=produto.getModelo()%></p>
		      			<hr class="line">
		      			<div class="row">
		      				<div class="col-md-6 col-sm-6">
		      					<p class="price"><%=produto.getPreco() %></p>
		      				</div>
		      				<div class="col-md-6 col-sm-6">
		      					 <a href="MontarCarrinho2?id=<%=produto.getId() %>"><button type="button" class="btn btn-primary"><span class="glyphicon glyphicon-shopping-cart"></span>Comprar</button></a>                     
		      				</div>	
		      			</div>
		    		</span>
		  		</div>
			<% } %>
		
			</div> <!-- fechar div "row" -->
		<% } %>
			
			<div class="row">
			
			<%
				int ultimoProduto = (quantidadeLinhas * 4) - 1;
				for (int h=0; h < sobraProdutos; h++) {
					Produto produto = produtos.get(ultimoProduto + h);
			%>
		    	<!-- Inicio Vitrine -->
		  		<div class="col-md-3 col-sm-6">
		    		<span class="thumbnail">
		      		 <a href="CarregarProduto?id=<%=produto.getId() %>"><img src="img/<%=produto.getId()%>.png" alt="Imagem de <%=produto.getModelo() %>"></a> 
		      			<h4><%=produto.getNome()%></h4>
		      			
		      			<p><%=produto.getModelo()%></p>
		      			<hr class="line">
		      			<div class="row">
		      				<div class="col-md-6 col-sm-6">
		      					<p class="price"><%=produto.getPreco() %></p>
		      				</div>
		      				<div class="col-md-6 col-sm-6">
		      					 <a href="MontarCarrinho2?id=<%=produto.getId() %>"><button type="button" class="btn btn-primary"><span class="glyphicon glyphicon-shopping-cart"></span>Comprar</button></a>                     
		      				</div>	
		      			</div>
		    		</span>
		  		</div>
			<% } %>						
			</div>
	
	<% } %>

	</div>

   
	<jsp:include page="template/sobre.jsp" />
	<jsp:include page="template/footer.jsp" />

</body>
</html>
