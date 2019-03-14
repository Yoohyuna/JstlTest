<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<%
       //request.setCharacterEncoding("utf-8");
      //java.util.HashMap map=new java.util.HashMap();
     // map.put("name","홍길동"); //map.get(키명(name))
     //requestEncoding(액션태그명) value="캐릭터셋(utf-8)"
%>
<fmt:requestEncoding value="utf-8" />

<c:set var="map" value="<%=new java.util.HashMap() %>" />
<html>
<head>
<meta charset="UTF-8">
<title>set태그의 2번째 예제</title>
</head>
<body>
<%-- 
    target(${객체명} ,property(속성명(멤버변수)), value(저장할값)
 --%>
 
 <c:set target="${map}"  property="name"  value="홍길동" />
 <!-- map.get(키명) -->
  변수 map에 저장된 name값:${map.name}<br>
  변수 map에 저장된 name값2:${map['name']}<br>
  변수 map에 저장된 name값3:${map["name"]}<br>
  
  <form method="post" action="setTag2.jsp">
    이름:<input type="text" name="name">
    <input type="submit" value="전송">
  </form>
  <hr>
  이름은 <%=request.getParameter("name") %> 입니다.<p>
  이름은(el) ${param.name} 입니다.
</body>
</html>








