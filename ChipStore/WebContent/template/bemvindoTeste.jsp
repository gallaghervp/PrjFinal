<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="br.com.chipstore.model.*"%>
<div class="row">
    <div id="header" class="page-header"> 
        <% 
        	if (session.getAttribute("cliente") != null) { 
        		Cliente cliente = (Cliente) session.getAttribute("cliente");
        %>
        	<h3 class="text-center">Bem-vindo, <%= cliente.getNome() %>!</h3>
        <% } %>
    </div>
</div>