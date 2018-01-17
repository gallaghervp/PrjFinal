<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" 
    import="java.util.List, br.com.chipstore.model.Administrador"
    import="br.com.chipstore.service.AdministradorService"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>ChipStore - Registro Administrador</title>
</head>
<body>

	<%@ include file="../template/cabecalho2.jsp"%>

	<div id="main" class="container-fluid" style="margin-top: 50px">

		<div id="top" class="row">
			<div class="col-sm-3">
				<h2>Registro Administrativo</h2>
			</div>
			<div class="col-sm-6">

				<div class="input-group h2">
					<input name="data[search]" class="form-control" id="search"
						type="text" placeholder="Consultar ADM"> <span
						class="input-group-btn">
						<button class="btn btn-primary" type="submit">
							<span class="glyphicon glyphicon-search"></span>
						</button>
					</span>
				</div>

			</div>
			<div class="col-sm-3">
				<a href="incluirAdministrador.jsp"
					class="btn btn-primary pull-right h2">Retorna para Cadastro</a>
			</div>
		</div>
		<!-- /#top -->


		<hr />
		<div id="list" class="row">

			<div class="table-responsive col-md-12">
				<table class="table table-striped" cellspacing="0" cellpadding="0">
					<thead>
						<tr>
							<th>Matricula</th>
							<th>Nome</th>
							<th>Telefone</th>
							<th>Email</th>
							<th class="actions"></th>
						</tr>
					</thead>
					<tbody>
					<%
					AdministradorService as =  new AdministradorService();
List<Administrador> administradores = as.listar();
%>
		<%for (Administrador administrador: administradores){ %>
						<tr>
							<td><%=administrador.getMatricula()%></td>
							<td><%=administrador.getNome()%></td>
							<td><%=administrador.getTelefone()%></td>
							<td><%=administrador.getEmail()%></td>
							<td class="actions">
							<a class="btn btn-warning btn-xs" href="#">Editar</a>
						    <a class="btn btn-danger btn-xs" href="#" data-toggle="modal" data-target="#delete-modal">Excluir</a></td>
						</tr>
						<% } %>
					</tbody>
				</table>
			</div>

		</div>
		<!-- /#list -->

		<div id="bottom" class="row">
			<div class="col-md-12">
				<ul class="pagination">
					<li class="disabled"><a>&lt; Anterior</a></li>
					<li class="disabled"><a>1</a></li>
					<li><a href="#">2</a></li>
					<li><a href="#">3</a></li>
					<li class="next"><a href="#" rel="next">Próximo &gt;</a></li>
				</ul>
				<!-- /.pagination -->
			</div>
		</div>
		<!-- /#bottom -->
	</div>
	<!-- /#main -->

	<!-- Modal -->
	<div class="modal fade" id="delete-modal" tabindex="-1" role="dialog"
		aria-labelledby="modalLabel">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Fechar">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title" id="modalLabel">Excluir Item</h4>
				</div>
				<div class="modal-body">Deseja realmente excluir este item?</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-primary">Sim</button>
					<button type="button" class="btn btn-default" data-dismiss="modal">N&atilde;o</button>
				</div>
			</div>
		</div>
	</div>

	<script src="js/jquery.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
</body>
</html>