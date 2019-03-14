<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>catch.jsp</title>
</head>
<body>
<%
     //try{}catch(Exception ex){e.getMessage() or e.toString()}
     //catch var="예외처리객체명"
%>
<c:catch var="ex">
   name의 매개변수명:<%=request.getParameter("name") %>
   <%   
            if(request.getParameter("name").equals("test")) {  %>
        ${param.name}은 test입니다.
    <% } %>
</c:catch>
<%-- <c:if test="${ex!=null}">  ex==null --%>
<c:if test="${not empty ex }" >
    예외가 발생하였습니다.<br>
    ${ex}
</c:if>
</body>
</html>


