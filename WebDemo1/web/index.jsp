<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<sql:query var="result" dataSource="jdbc/kunden">
    SELECT Name, Email FROM APP.CUSTOMER ORDER BY Name ASC
</sql:query>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Kundenliste</title>
    </head>
    <body>
        <h1>Liste aller Kunden</h1><table border="1">
            <thead>
                <tr>
                    <th>Name</th>
                    <th>E-Mail</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="aktDatensatz" items="${result.rows}">
                    <tr>
                        <td>${aktDatensatz.Name}</td>
                        <td>${aktDatensatz.Email}</td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>

    </body>
</html>
