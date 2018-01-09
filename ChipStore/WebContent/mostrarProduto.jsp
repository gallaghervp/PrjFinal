<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <title>ChipStore - Celular</title>
</head>

<body>

<jsp:include page="template/cabecalho.jsp" />

    <!------------- Produto ------------------>
	<jsp:useBean id="produto" class="br.com.chipstore.model.Produto" scope="request"/>

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
                    <h3>${produto.nome}</h3>    
                    <h5 style="color:#337ab7">vendido por <a href="#">${produto.fabricante.nome}</a> Â· <small style="color:#337ab7">(587 Vendas)</small></h5>
        
                    <!-- Precos -->
                    <h6 class="title-price"><small>Pre�o</small></h6>
                    <h3 style="margin-top:0px;">R$ ${produto.preco}</h3>
        
                    <!-- Detalhes do produto-->
                    <div class="section">
                        <h6 class="title-attr" style="margin-top:15px;" ><small>${produto.descricao}</small></h6>                    
                        <div>
                            <div class="attr" style="width:25px;background:#5a5a5a;"></div>
                            <div class="attr" style="width:25px;background:	#61490d;"></div>
                        </div>
                    </div>
        
                    <!-- BotÃµes de compra -->
                    <div class="section" style="padding-bottom:20px;">
                        <a href="carrinho.jsp"><button type="button" class="btn btn-primary"><span class="glyphicon glyphicon-shopping-cart"></span>Adicionar ao carrinho</button></a>
                    </div>                                        
                </div>                              
            </div>
        </div>       

<jsp:include page="template/sobre.jsp"/>     
<jsp:include page="template/footer.jsp"/>

</body>
</html>
  