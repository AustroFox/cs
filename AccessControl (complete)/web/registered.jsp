<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 

<!-- Folgeseite zur Neuregistrierung eines Kunden. Die vom Formular in die Bean 
     übernommenen Daten müssen geprüft und in die Datenbank geschrieben werden. -->

<jsp:useBean id="userData" scope="page" class="de.ihrprof.cstutorial.UserPasswordBean" />
<jsp:setProperty name="userData" property="*" />

<sql:update var="result" dataSource="jdbc/userdb">
    INSERT INTO DBADMIN.USERS (USERNAME, PASSWORD) 
    VALUES ('${userData.username}', '${userData.passwordHash}')
</sql:update>
<sql:update var="result" dataSource="jdbc/userdb">
    INSERT INTO DBADMIN.USERS_GROUPS (USERNAME, GROUPNAME) 
    VALUES ('${userData.username}', 'reg_user')
</sql:update>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <title>Registrierungsbestätigung</title>
        <link href="styles.css" rel="stylesheet" type="text/css" />
    </head>

    <body> 
        <%@ include file="/WEB-INF/jspf/navi.jspf"%>  

        <h1>Herzlich willkommen!</h1>
        <p>Sie wurden unter dem Namen <c:out value="${userData.username}" /> registriert </p>         

        <%@ include file="WEB-INF/jspf/sessioninfo.jspf"%>    

    </body>
</html>
