<%@ page language="java" contentType="text/html; charset=US-ASCII" pageEncoding="US-ASCII"%>
<%@ taglib prefix="f"  uri="http://java.sun.com/jsf/core"%>
<%@ taglib prefix="h"  uri="http://java.sun.com/jsf/html"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=US-ASCII">
<title>Insert title here</title>
</head>
<body style="background-color: MISTYROSE">
<f:view>
<h:form>
<h1>Register new provider</h1>
<h2> Fields marked with '*' are mandatory</h2>
<div><em>Name*</em>: <h:inputText value="#{providerController.name}" 
                     required="true"
                     requiredMessage="name is mandatory"
                     id="name"/> <h:message for="name" />    </div>
<div><em>Partita iva</em>*: <h:inputText value="#{providerController.partitaIva}" 
                     required="true"
                     requiredMessage="Password is mandatory"
                     id="iva"/> <h:message for="iva" />   </div>

<div>	<h:commandButton value="Forward"  action="#{providerController.newAddress}"/></div>
</h:form>
</f:view>
</body>
</html>