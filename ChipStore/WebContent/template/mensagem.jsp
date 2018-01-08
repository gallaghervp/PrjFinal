<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<c:if test="${requestScope.mensagem != null}">
	<div class="row">
	  <div class="alert alert-danger alert-dismissable">
	    <a href="#" class="close" data-dismiss="alert" aria-label="close">×</a>
 	    <strong><c:out value="${mensagem}" /></strong>
	  </div>
	</div>
</c:if>
