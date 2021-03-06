<%@ page language="java" contentType="text/html; charset=US-ASCII" pageEncoding="US-ASCII"%>
<%@ taglib prefix="f"  uri="http://java.sun.com/jsf/core"%>
<%@ taglib prefix="h"  uri="http://java.sun.com/jsf/html"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=US-ASCII">
<title>Confirmation data product</title>
</head>
<body style="background-color: MISTYROSE">
<f:view>
<h:form>
	<h1>${productController.name}</h1>
	<h2>Details</h2>
	<div>Code: ${productController.code}</div>
	<div>Price: ${productController.price}</div>
	<div>Description: ${productController.description}</div>
	<c:forEach var="provider" items="#{productController.providers}">
	<div>Provider: ${provider.name}</div>
	</c:forEach>
	<h:commandLink action="#{productController.createProduct}" value="confirm product"> </h:commandLink>
</h:form>
</f:view>
</body>
</html>