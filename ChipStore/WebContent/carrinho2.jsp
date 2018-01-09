<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" 
    import="java.util.List, br.com.chipstore.model.ItemCarrinho, br.com.chipstore.model.Produto"%>
<!DOCTYPE html>
<html>
<head>
    <title>ChipStore - Carrinho</title>
</head>

<body>

<%@ include file="../template/cabecalho2.jsp" %>

<% 
	List<ItemCarrinho> carrinho; 

	carrinho = (List<ItemCarrinho>) session.getAttribute("carrinho");
	
	Double valorTotal = (Double)session.getAttribute("valorTotal");

%>
	<%="Valor:" + valorTotal%>
    <br>
    <div class="container">
        <table id="cart" class="table table-hover table-condensed">
            <thead>
                <tr>
                    <th style="width:50%">Produto</th>
                    <th style="width:10%">Preço</th>
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
                    <td class="actions" data-th="">
	                    <a href="DecrementQuantidade?id=<%=ic.getProduto().getId()%>"><i class="fa fa-minus-circle fa-lg" aria-hidden="true"></i></a>
	                    <a href="IncrementQuantidade?id=<%=ic.getProduto().getId()%>"><i class="fa fa-plus-circle fa-lg" aria-hidden="true"></i></a>
                        <a href="RemoverItemCarrinho?id=<%=ic.getProduto().getId()%>">Remover</a>
                    </td>
                </tr>
                <%} %>
            </tbody>
            <tfoot>
                <tr class="visible-xs">
                    <td class="text-center"><a><%=valorTotal%></a></td>
                </tr>
                <tr>
                    <td><a href="index.html" class="btn btn-warning"><i class="fa fa-angle-left"></i> Continue Comprando</a></td>
                    <td colspan="2" class="hidden-xs"></td>
                    <td class="hidden-xs text-center"><a><%=valorTotal%></a></td>
                    <td><a href="finalizarCompra.jsp" class="btn btn-success btn-block">Pagamento <i class="fa fa-angle-right"></i></a></td>
                </tr>
            </tfoot>
        </table>
    </div>

    <%@ include file="../template/footer2.jsp" %>


</body>

</html>
