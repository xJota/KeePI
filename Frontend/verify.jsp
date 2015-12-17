<%@page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" %>

<%
  if (session.getAttribute("owner") != null) //change this
  {
%>
<jsp:forward page="/keepi/home.jsp"></jsp:forward>
<%
  }
%>

