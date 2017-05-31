<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<div class="menu">
    <a href="<spring:url value="/hotel/lister"/>">Gestion hotels</a>
    <a href="<spring:url value="/chambre/lister"/>">Gestion chambres</a>
    <a href="<spring:url value="/client/lister"/>">Gestion clients</a>
    <a href="<spring:url value="/reservations/lister"/>">Gestion réservations</a>
    <a href="<spring:url value="/identification"/>">Identification</a>
</div>