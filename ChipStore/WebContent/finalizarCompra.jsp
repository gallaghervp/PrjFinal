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
                    <form class="form-horizontal" role="form">
                        <legend>Pagamento</legend>
                        <div class="form-group">
                            <label class="col-sm-3 control-label" for="card-holder-name">Nome no cart�o</label>
                            <div class="col-sm-9">
                                <input type="text" class="form-control" name="card-holder-name" id="card-holder-name" placeholder="Card Holder's Name">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label" for="card-number">N�mero do cart�o</label>
                            <div class="col-sm-9">
                                <input type="text" class="form-control" name="card-number" id="card-number" placeholder="Debit/Credit Card Number">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label" for="expiry-month">Data de validade</label>
                            <div class="col-sm-9">
                                <div class="row">
                                    <div class="col-xs-3">
                                        <select class="form-control col-sm-2" name="expiry-month" id="expiry-month">
                <option>Month</option>
                <option value="01">Jan (01)</option>
                <option value="02">Feb (02)</option>
                <option value="03">Mar (03)</option>
                <option value="04">Apr (04)</option>
                <option value="05">May (05)</option>
                <option value="06">June (06)</option>
                <option value="07">July (07)</option>
                <option value="08">Aug (08)</option>
                <option value="09">Sep (09)</option>
                <option value="10">Oct (10)</option>
                <option value="11">Nov (11)</option>
                <option value="12">Dec (12)</option>
              </select>
                                    </div>
                                    <div class="col-xs-3">
                                        <select class="form-control" name="expiry-year">
                <option value="13">2013</option>
                <option value="14">2014</option>
                <option value="15">2015</option>
                <option value="16">2016</option>
                <option value="17">2017</option>
                <option value="18">2018</option>
                <option value="19">2019</option>
                <option value="20">2020</option>
                <option value="21">2021</option>
                <option value="22">2022</option>
                <option value="23">2023</option>
              </select>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label" for="cvv">Cart�o CVV</label>
                            <div class="col-sm-3">
                                <input type="text" class="form-control" name="cvv" id="cvv" placeholder="Security Code">
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-sm-offset-3 col-sm-9">
                                <a href="#"><button type="button" class="btn btn-success">Finalizar Compra</button></a>
                                <a href="carrinho.jsp"><button type="button" class="btn btn-success">Carrinho</button></a>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>

    <%@ include file="../template/footer2.jsp" %>

</body>

</html>
