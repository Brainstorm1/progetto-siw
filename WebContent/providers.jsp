<%@ page language="java" contentType="text/html; charset=US-ASCII" pageEncoding="US-ASCII"%>
<%@ taglib prefix="f"  uri="http://java.sun.com/jsf/core"%>
<%@ taglib prefix="h"  uri="http://java.sun.com/jsf/html"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=US-ASCII">
<title>Insert title here</title>
</head>
<body style="background-color: MISTYROSE">
<f:view>

<table>
	<tr>
		<th>Id_____</th><th>_____Name___</th><th>_____P.Iva_____</th><th>______Street_______</th><th>__Street Number_____</th><th>_____City_____</th><th>__Country_____</th><th>_____State_____</th><th>___Zip code</th>
	</tr>
	<c:forEach var="provider" items="#{providerController.providers}">
		<tr>
			<td>${provider.id}</td>
			<td>${provider.name}</td>
			<td>${provider.partitaIva}</td>
			<td>${provider.address.street}</td>
			<td>${provider.address.streetNumber}</td>
			<td>${provider.address.city}</td>
			<td>${provider.address.country}</td>
			<td>${provider.address.state}</td>
			<td>${provider.address.zipcode}</td>
		</tr>
	</c:forEach>
	
	
	
</table>
<h1>  </h1>
<h1>  </h1>
<a href='<c:url value="/faces/adminHome.jsp" />'>Go back home</a>
</f:view>
</body>
</html>