<% 
    session.invalidate();
   /* Den Seitenaufruf direkt auf die Startseite umleiten */ 
   response.sendRedirect("index.jsp"); 
%>