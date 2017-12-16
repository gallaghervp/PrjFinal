<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
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


  <!--------------- SOBRE -------------------->

    <div id="sobre" class="heading-index">
        <h1 style="text-shadow: 0.1em 0.1em 0.2em #87F">Sobre a ChipStore</h1>
    </div>

    <br>
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="panel panel-default" style="border-color: #847BF6;box-shadow: 6px 6px 10px #847BF6;">
                    <div class="panel-body" style="color: #000000">
                        <p>O nome do nosso site vem de Application Program Interface, que � um tipo de programa utilizado para fazer com que dois outros programas diferentes troquem informa��es entre si. Um programa do tipo API pode ser entendido como uma interface.</p>

                        <p>Escolhemos este nome pois al�m de ser um jarg�o muito conhecido na �rea de inform�tica, reflete tamb�m o nosso papel, que � facilitar o contato entre as empresas e os profissionais de inform�tica.</p>

                        <p>N�o somos uma associa��o de profissionais e n�o estamos ligados a nenhum sindicato ou entidades de classe. Nosso compromisso � atender a comunidades de profissionais de inform�tica, possibilitando a troca de informa��es e experi�ncias.</p>

                        <p>ChipStore � uma marca registrada no INPI, todas as informa��es deste site s�o protegidas pela lei de direitos autorais nro 9.610/98, n�o podendo ser copiadas, utilizadas por outros sites, ou disponibilizadas em outro local. Caso saiba de alguma viola��o denuncie.</p>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="parallax-container" id="parallaxIndex" data-speed="6" data-type="background"></div>
    <div id="contato" class="heading-index">
    </div>

</body>
</html>