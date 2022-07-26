

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
    <c:if test="${!empty sessionScope.prenom && !empty sessionScope.nom}">
        <p>Bienvenu ${sessionScope.prenom} ${sessionScope.nom}!</p>
        
    </c:if>
        <table border="1">
            <thead>
                <tr>
                    <th>NOM</th>
                    <th>PRENOM</th>
                    <th>PSEUDO</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>${nom}</td>
                    <td>${prenom}</td>
                    <td>${pseudo}</td>
                </tr>  
                                                         
            </tbody>
        </table>
                <form action="monservlet2" method="POST">
                <input type="submit" value="DECONNECTION"> 
                </form>
    </body>
</html>
