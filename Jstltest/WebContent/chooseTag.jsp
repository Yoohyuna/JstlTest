<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>choose태그문 구현</title>
</head>
<body>
  <c:set var="age" value="${20}" />
  <c:set var="name" value="${'bk'}" />
<c:if test="${ 19 < age }">
     당신의 나이는 19세 이군요!
</c:if>
<%-- if조건식의 else구문은 <c:if>태그의 부정조건식으로 구현한다.  --%>
<c:if test="${name== 'bk'}">
     name값은 ${name}이다.
</c:if>

<c:if test="${name!= 'bk'}">
     name값은 bk가 아니다
</c:if><p>
<hr>
<!-- 다중 조건식 else if,switch~case -->
<ul>
<c:choose>
  <c:when test="${param.name2=='bk'}">
    name2 파라미터값은 ${param.name2} 입니다.<br>
  </c:when>
 
 <c:when test="${param.age2>18}">
    당신의 나이는 18세 이상이군요!!<br>
  </c:when>
  <c:otherwise>
    <li>당신은 'bk'도 아니고 나이도 18세 이상도 아니다. </li>
  </c:otherwise>
</c:choose>
</ul>



</body>
</html>