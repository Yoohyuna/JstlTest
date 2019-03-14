<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>     
<%
     //response.sendRedirect("http://www.naver.com");//외부사이트로 이동
     //response.sendRedirect("chooseTag.jsp?name2=bk");//특정 jsp로 이동
%>
<%-- p921~940
        <c:redirect url="이동할 페이지명" /> 매개변수 없이 이동만 하는 경우(공유X)
        <c:redirect url="이동할 페이지명" >
              <c:param name="전달할매개변수명" value="전달할값" />
              ,,,
        </c:redirect>
 --%>
<c:redirect url="chooseTag.jsp">
    <c:param name="name2" value="bk" />
</c:redirect>