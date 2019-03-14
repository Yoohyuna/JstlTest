<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>if문 태그</title>
</head>
<body>
<%
    //int age=20;
    //String name="bk";
    //if (조건식)  실행문  if(age>19) =>el형식으로 수식을 표시
%>
  <c:set var="age" value="${20}" />
  <c:set var="name" value="${'bk'}" />
  <c:if test="true">
         무조건 실행된다.
  </c:if>
  <c:if test="${ 19 < age }">
     당신의 나이는 19세 이군요!
  </c:if>
  <c:if test="${name=='bk'}">
     name 파라미터값은 ${name} 입니다<br>
  </c:if>
</body>
</html>


