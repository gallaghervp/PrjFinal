<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" 
    import="java.util.List, br.com.chipstore.model.Produto"%>
<!DOCTYPE html>
<html>
<head>
    <title>ChipStore - Carrinho</title>
</head>

<body>

<%@ include file="../template/cabecalho2.jsp" %>

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
            </tbody>
            <tfoot>
                <tr class="visible-xs">
                </tr>
                <tr>
                    <td><a href="index.html" class="btn btn-warning">Faça suas compras!</a></td>
                    <td colspan="2" class="hidden-xs"></td>
                    <td class="hidden-xs text-center"><strong>Total $0.00</strong></td>
                    <td></a></td>
                </tr>
            </tfoot>
        </table>
    </div>

    <%@ include file="../template/footer2.jsp" %>


</body>

</html>
