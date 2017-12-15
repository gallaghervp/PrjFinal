<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<<<<<<< HEAD
<title>Contato</title>
=======
<title>Insert title here</title>
>>>>>>> branch 'master' of https://github.com/gallaghervp/PrjFinal.git
</head>
<body>
<!--------------- CONTATO -------------------->

    <div id="contato" class="heading-index">
    </div>

    <section id="contact" class="content-section text-center">
        <div class="contact-section">
            <div class="container">
                <br>
                <h1>Contato</h1>
                <h4>
                    <p><span class="glyphicon glyphicon-info-sign"></span> Alguma pergunta? Sinta-se livre para nos contatar.</p>
                </h4>
                <div class="row">
                    <div class="col-md-8 col-md-offset-2">
                        <form action="#" class="form-horizontal" method="GET">
                            <div class="form-group">
                                <label for="exampleInputName2">Nome</label>
                                <input type="text" id="nome" name="nome" class="form-control" placeholder="Jane Doe" required="required" />
                            </div>
                            <div class="form-group">
                                <label for="exampleInputEmail2">Email</label>
                                <input type="email" id="email" name="email" class="form-control" placeholder="jane.doe@example.com" pattern="^[a-z0-9._-]{2,}@[a-z0-9-]{2,}.[a-z.]{2,}$" required="required" />
                            </div>
                            <div class="form-group">
                                <label for="exampleInputAssunto2">Assunto</label>
                                <input type="text" id="assunto" name="assunto" class="form-control" placeholder="Dinheiro" required="required" />
                            </div>
                            <div class="form-group ">
                                <label for="exampleInputText">Mensagem</label>
                                <textarea id="mensagem" name="mensagem" class="form-control" placeholder="Deion" required="required"> </textarea>
                            </div>
                            <button type="submit" name="btEnviar" class="btn btn-default">Enviar Mensagem</button>
                        </form>
                        <hr>
                    </div>
                </div>
            </div>
        </div>
    </section>

</body>
</html>