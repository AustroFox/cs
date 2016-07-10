<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="<%= request.getContextPath()%>/styles.css" rel="stylesheet" type="text/css"/>
        <title>Loginformular</title>
    </head>
    <body>
        <%@ include file="/WEB-INF/jspf/navi.jspf"%>  
        
        <%
            if(request.getParameter("Retry") != null)
                out.println("<h1 class=\"error\">Loginfehler - bitte nochmal</h1>");
        %>
        <form method="post" action="j_security_check">
            <fieldset id="logindaten">
                <legend>Login</legend>
                <ol>
                    <li>
                        <label for="j_username">Benutzername</label>
                        <input type="text" name="j_username" autofocus>
                    </li>
                    <li>
                        <label for="j_password">Passwort</label>
                        <input type="password" name="j_password">
                    </li>
                    <li>
                        <input type="submit" value="Einloggen">
                        <input type="reset" value="Zurücksetzen">
                    </li>
                </ol>
            </fieldset>
        </form>

        <%@ include file="/WEB-INF/jspf/sessioninfo.jspf"%>  

    </body>
</html>