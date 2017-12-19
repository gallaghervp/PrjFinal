<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" 
    import="java.util.List, br.com.chipstore.model.Produto"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <title>ChipStore - Carrinho</title>
</head>

<body>

<%@ include file="../template/cabecalho2.jsp" %>

<% List<Produto>carrinho; 

	carrinho = (List<Produto>)session.getAttribute("carrinho");
	
	for (Produto p:carrinho) {
		out.println("Descrição do Produto" + p.getDescricao());
	}

%>

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
				for (Produto p:carrinho) {		
				%>
				
				
                <tr>
                    <td data-th="Product">
                        <div class="row">
                            <div class="col-sm-2 hidden-xs"><img src="img/<%=p.getId()%>.png" alt="..." class="img-responsive" /></div>
                            <div class="col-sm-10">
                                <h4 href="MontarCarrinho?id=<%=p.getId()%>" class="nomargin"><%=p.getNome()%></h4>
                                <p><%=p.getModelo()%></p>
                            </div>
                        </div>
                    </td>
                    <td data-th="Price"><%=p.getPreco() %></td>
                    <td data-th="Quantity">
                        <input type="number" class="form-control text-center" value="1">
                    </td>
                    <td data-th="Subtotal" class="text-center"><%=p.getPreco() %></td>
                    <td class="actions" data-th="">
                        <button class="btn btn-info btn-sm"><i class="fa fa-refresh"></i></button>
                        <button class="btn btn-danger btn-sm"><i class="fa fa-trash-o"></i></button>
                    </td>
                </tr>
                <%} %>
            </tbody>
            <tfoot>
                <tr class="visible-xs">
                    <td class="text-center"><strong>Total 1.99</strong></td>
                </tr>
                <tr>
                    <td><a href="index.jsp" class="btn btn-warning"><i class="fa fa-angle-left"></i> Continue Comprando</a></td>
                    <td colspan="2" class="hidden-xs"></td>
                    <td class="hidden-xs text-center"><strong>Total $1.99</strong></td>
                    <td><a href="finalizarCompra.jsp" class="btn btn-success btn-block">Pagamento <i class="fa fa-angle-right"></i></a></td>
                </tr>
            </tfoot>
        </table>
    </div>

    <%@ include file="../template/footer2.jsp" %>


</body>

</html>
