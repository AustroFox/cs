<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="<%= request.getContextPath()%>/styles.css" rel="stylesheet" type="text/css" />
        <title>Benutzerregistrierung</title>
    </head>
    <body>
        <%@ include file="/WEB-INF/jspf/navi.jspf"%>  
        
        <h1>Bitte registrieren Sie sich</h1>
        <form action="registered.jsp">
            <fieldset>
                <legend>Registrierung</legend>
                <ol>
                    <li>
                        <label for="username">Benutzername</label>
                        <input type="text" name="username" autofocus>
                    </li>
                    <li>
                        <label for="password">Passwort</label>
                        <input type="password" name="password">
                    </li>

                    <li>
                        <input type="submit" value="Registrieren" />
                        <input type="reset" value="Zurücksetzen">
                    </li>
                </ol>
            </fieldset>
        </form>
        
        <%@ include file="WEB-INF/jspf/sessioninfo.jspf"%>    
    </body>
</html>
