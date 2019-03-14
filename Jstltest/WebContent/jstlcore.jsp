<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jstlcore.jsp(변수(객체)의 사용범위,out태그)</title>
</head>
<body>
   <h3>출력문</h3>
   <h1>
   <%--
       <c:out value="출력할대상자(el과 같이 사용)" />
    --%>
   ${1+2} <c:out value="${1+2}" /><p>
   <%
       out.println(1+2);
   %>
   <%=1+2 %>
   <hr>
   ${1 > 3 } <c:out value="${1 > 3}" />
   ${1 gt 3 } <c:out value="${1 gt 3}" />
   <hr>
   형식:session.setAttribute("key",value);<p>
   <%
       String name="hello";
       //session.setAttribute("name","하늘");
       //String name="하늘" ->session.setAttribute("name","하늘")
       // request.setAttribute("name","하늘"); =>scope="request"
   //scope="page | request | sesssion | application"	(저장영역지정시)
   // pageScope requestScope sesssionScope applicationScope ->p922 (출력할때 영역설정)
   %>
   <c:set var="name" value="하늘"  scope="session"/>
   expression name:<%=session.getAttribute("name") %><p>
   
   set page scope var "name":
   <c:set var="name"  value="hello" />
   <!-- 같은 변수의 값을 출력 저장영역을 표시.출력할 변수명 -->
   c:out name:<c:out value="${name}" /><br>
   c:out name:<c:out value="${pageScope.name}" /><br>
   session의 값 name:<c:out value="${sessionScope.name}" /><br>
   <hr>
   remove session scope var "name":<c:remove var="name" scope="session"/><p>
   session의 값 name2:<c:out value="${sessionScope.name}" /><br>
   </h1>
</body>
</html>



