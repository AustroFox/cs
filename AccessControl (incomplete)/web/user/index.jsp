<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="<%= request.getContextPath()%>/styles.css" rel="stylesheet" type="text/css"/>
        <title>Benutzerseite</title>
    </head>
    <body>
        <%@ include file="/WEB-INF/jspf/navi.jspf"%>  

        <h1 class="okay">Willkommen!</h1>
        <p>Um diese Seite zu erreichen, muss man als Benutzer eingeloggt sein.</p>

        <%@ include file="/WEB-INF/jspf/sessioninfo.jspf"%>  
    </body>
</html>
