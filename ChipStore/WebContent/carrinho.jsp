<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
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
                    <th style="width:10%">Pre�o</th>
                    <th style="width:8%">Quantidade</th>
                    <th style="width:22%" class="text-center">Subtotal</th>
                    <th style="width:10%"></th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td data-th="Product">
                        <div class="row">
                            <div class="col-sm-2 hidden-xs"><img src="http://placehold.it/100x100" alt="..." class="img-responsive" /></div>
                            <div class="col-sm-10">
                                <h4 class="nomargin">Produto 1</h4>
                                <p>Quis aute iure reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Lorem ipsum dolor sit amet.</p>
                            </div>
                        </div>
                    </td>
                    <td data-th="Price">$1.99</td>
                    <td data-th="Quantity">
                        <input type="number" class="form-control text-center" value="1">
                    </td>
                    <td data-th="Subtotal" class="text-center">1.99</td>
                    <td class="actions" data-th="">
                        <button class="btn btn-info btn-sm"><i class="fa fa-refresh"></i></button>
                        <button class="btn btn-danger btn-sm"><i class="fa fa-trash-o"></i></button>
                    </td>
                </tr>
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
