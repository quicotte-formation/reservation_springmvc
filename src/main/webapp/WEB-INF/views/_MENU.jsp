<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<div class="menu">
    <c:choose> 
        <c:when test="${!adminConnecte}">
            <a href="<spring:url value="/identification"/>">Identification</a>
        </c:when>
        <c:otherwise>
            <a href="<spring:url value="/hotel/lister"/>">Gestion hotels</a>
            <a href="<spring:url value="/chambre/lister"/>">Gestion chambres</a>
            <a href="<spring:url value="/client/lister"/>">Gestion clients</a>
            <a href="<spring:url value="/reservations/lister"/>">Gestion r�servations</a>
            <a href="<spring:url value="/deconnexion"/>">D�connexion</a>
        </c:otherwise>
    </c:choose>
</div>