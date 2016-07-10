<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html> 
    <head> 
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="styles.css" rel="stylesheet" type="text/css"/>
        <title>Startseite</title>
    </head>
    <body>
        <%@ include file="/WEB-INF/jspf/navi.jspf"%>  
        
        <h1>Startseite</h1>
        <p>Auf diese Seite kann jeder kommen!</p>

        <%@ include file="/WEB-INF/jspf/sessioninfo.jspf"%>  
    </body>
</html>
