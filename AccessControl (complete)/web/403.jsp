<%@page isErrorPage="true" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html> 
    <head> 
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="<%= request.getContextPath()%>/styles.css" rel="stylesheet" type="text/css"/>
        <title>Fehler 403</title>
    </head>
    <body>
        <%@ include file="/WEB-INF/jspf/navi.jspf"%> 
        
        <h1 class="error">Fehler 403</h1>
        <p>Der Zugriff auf die gewünschte Seite ist nicht erlaubt.</p> 
        
        <%@ include file="/WEB-INF/jspf/sessioninfo.jspf"%> 
    </body>
</html>
