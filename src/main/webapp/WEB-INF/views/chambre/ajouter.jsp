<%-- 
    Document   : _TEMPLATE
    Created on : 29 mai 2017, 14:45:29
    Author     : formation
--%>

<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<c:set var="cheminModif">
    <spring:url value="/hotel/modifier"/>
</c:set>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <c:import url="../_MENU.jsp"></c:import>
        <contenu>
            <h1>Ajout d'une nouvelle chambre</h1>
            <form:form modelAttribute="chambre">
                <label>Hotel:</label>
                <form:select items="${hotels}" itemLabel="nom" itemValue="id" path="hotel.id"/>
                <br>
                <label>Nom chambre:</label>
                <form:input path="nom"/>
                <br>
                <label>Prix:</label>
                <form:input path="prix"/>
                <input type="submit"/>
            </form:form>
        </contenu>
    <c:import url="../_PIED.jsp"></c:import>
</body>
</html>