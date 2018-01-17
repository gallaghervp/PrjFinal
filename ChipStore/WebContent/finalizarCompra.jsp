<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <title>ChipStore - Finalizar Compra</title>
</head>

<body style="padding-top: 240px;">

<%@ include file="../template/cabecalho2.jsp" %>



    <div class="container">
            <div class="col-sm-9 col-sm-offset-3 main">
                <br>
                <div class="card-dados-container">
                    <div class="form-horizontal" role="form">
                        <legend>Pagamento</legend>
                        
                        
                        <div class="form-group">
                            <label class="col-sm-3 control-label" for="databoleto">Data de emissão</label>
                            <div class="col-sm-9">
                        		<input type="text" class="form-control" name="databoleto" id="dataBoleto" placeholder="">
                          </div>
                        </div>
                        
                        <div class="form-group">
                            <label class="col-sm-3 control-label" for="valorboleto">Valor</label>
                            <div class="col-sm-3">
                                <input type="text" class="form-control" name="valorboleto" id="valorBoleto" placeholder="">
                            </div>
                        </div>
                       
                        <div class="form-group">
                            <label class="col-sm-3 control-label" for="codigoboleto">Código de barra</label>
                            <div class="col-sm-9">
                                <input type="text" class="form-control" name="codigoboleto" id="codigoBoleto" placeholder="">
                            </div>
                        </div>
                        
                        <div class="form-group">
                            <label class="col-sm-3 control-label" for="pedidoboleto">Pedido</label>
                            <div class="col-sm-9">
                                <input type="text" class="form-control" name="pedidoboleto" id="pedidoBoleto" placeholder="">
                            </div>
                        </div>
                        
                        <div class="form-group">
                            <div class="col-sm-offset-3 col-sm-9">
                                <a href="IncluirPedido" class="btn btn-success btn-block">Finalizar Pedido <i class="fa fa-angle-right"></i></a>
                                <a href="carrinho.jsp"><button type="button" class="btn btn-success">Carrinho</button></a>
                            </div>
                        </div>
                        
                    </div>
                </div>
            </div>
        </div>
    </div>

    <%@ include file="../template/footer2.jsp" %>

</body>

</html>
