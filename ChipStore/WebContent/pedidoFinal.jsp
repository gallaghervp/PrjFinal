<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" 
    import="java.util.List, br.com.chipstore.model.ItemCarrinho, br.com.chipstore.model.Produto, br.com.chipstore.model.Cliente
    , br.com.chipstore.model.Pedido"%>
<!DOCTYPE html>
<html>
<head>
    <title>ChipStore - Pedido</title>
</head>

<body>

<%@ include file="../template/cabecalho2.jsp" %>

<% 
	List<ItemCarrinho> carrinho; 

	carrinho = (List<ItemCarrinho>) session.getAttribute("carrinho");
	
	Double valorTotal = (Double) session.getAttribute("valorTotal");
	
	Cliente cliente = (Cliente) session.getAttribute("cliente");
	
	Pedido novoPedido = (Pedido) request.getAttribute("novoPedido");

%>
    <div class="container">
    	<h1>Sua compra foi realizada com sucesso!</h1>
    	<div class="col-sm-6">
    	<h2>N�mero do Pedido: <%=novoPedido.getId()%></h2>
    	<h3>Endere�o de Entrega</h3>
		<p class="media-primary"><%=cliente.getNome()%></p>
        <p class="media-primary"><%=cliente.getEndereco()%>, <%=cliente.getComplemento()%></p>
        <p class="media-primary"><%=cliente.getBairro()%></p>
        <p class="media-primary"><%=cliente.getMunicipio()%></p>
        <p class="media-primary"><%=cliente.getUf()%></p>
        </div>
	</div>
    <div class="container">
        <table id="cart" class="table table-hover table-condensed">
            <thead>
                <tr>
                    <th style="width:50%">Produto</th>
                    <th style="width:10%">Pre�o</th>
                    <th style="width:8%">Quantidade</th>
                    <th style="width:22%" class="text-center">Subtotal</th>
                    <th style="width:10%"></th>
                </tr>
            </thead>
            <tbody>
             <%
				for (ItemCarrinho ic: carrinho) {		
				%>
				
				
                <tr>
                    <td data-th="Product">
                        <div class="row">
                            <div class="col-sm-2 hidden-xs"><img src="img/<%=ic.getProduto().getId()%>.png" alt="..." class="img-responsive" /></div>
                            <div class="col-sm-10">
                                <h4 href="MontarCarrinho?id=<%=ic.getProduto().getId()%>" class="nomargin"><%=ic.getProduto().getNome()%></h4>
                                <p><%=ic.getProduto().getModelo()%></p>
                            </div>
                        </div>
                    </td>
                    <td data-th="Price"><%=ic.getProduto().getPreco() %></td>
                    <td data-th="Quantity">
                        <input type="text" class="form-control text-center" value="<%=ic.getQuantidade()%>" disabled>
                    </td>
                    <td data-th="Subtotal" class="text-center"><%=ic.getPreco()%></td>
                </tr>
                <%} %>
            </tbody>
            <tfoot>
                <tr class="visible-xs">
                    <td class="text-center"><a><%=valorTotal%></a></td>
                </tr>
                <tr>
                    <td></td>
                    <td colspan="2" class="hidden-xs"></td>
                    <td class="hidden-xs text-center"><a><%=valorTotal%></a></td>
                    <td></td>
                </tr>
            </tfoot>
        </table>
    </div>

    <%@ include file="../template/footer2.jsp" %>


</body>

</html>
