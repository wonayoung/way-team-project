<%@ page contentType="text/html; charset=euc-kr" %>
<%
    session.invalidate();    //  세션설정을 무효화시킴
    response.sendRedirect("index.jsp");     //  <jsp:forward page="index.html"/>과 동일한 의미
%>