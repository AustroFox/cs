<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="<%= request.getContextPath()%>/styles.css" rel="stylesheet" type="text/css"/>
        <title>Adminseite</title>
    </head>
    <body>
        <%@ include file="/WEB-INF/jspf/navi.jspf"%>  
        
        <h1 class="okay">Du bist jetzt Admin!</h1>
        <p>Diese ganz spezielle Seite ist nur für Admins zugänglich!</p>

        <%@ include file="/WEB-INF/jspf/sessioninfo.jspf"%>  
    </body>
</html>
