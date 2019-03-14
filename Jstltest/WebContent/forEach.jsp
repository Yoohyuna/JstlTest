<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<%
        java.util.HashMap mapData=new java.util.HashMap();
        mapData.put("name","홍길동");
        mapData.put("today",new java.util.Date());//날짜객체 저장
        //int []intArray={1,2,3,4,5};//배열도 객체다
%>
<c:set var="intArray" value="<%=new int[] {1,2,3,4,5} %>" />
<c:set var="map"  value="<%=mapData %>" />
<html>
<head>
<meta charset="UTF-8">
<title>for문 대용해서 사용하는 forEach구문</title>
</head>
<body>
<%
   int sum=0;
   for(int i=1;i<=100;i+=2){
	//if(i%2==1)
	sum+=i;//sum=sum+i
}
out.println(sum);
%>
<h4>1~100까지의 홀수의 합</h4>
<c:set var="sum" value="0" />
<c:forEach var="i" begin="1" end="100"  step="2">
<c:set var="sum" value="${sum+i}" />
</c:forEach>
결과=${sum}
<hr>
<%--  <c:set var="intArray" value="<%=new int[] {1,2,3,4,5} %>" />   --%>
<h4>int형 배열 </h4>
<c:forEach var="i" items="${intArray}"  begin="2"  end="4">
     [${i}]
</c:forEach>
<h4>Map</h4>
<!-- var(객체) items(배열 또는 컬렉션객체) -->
<c:forEach var="i"  items="${map}">
   ${i.key}=${i.value}<br>
</c:forEach>
</body>
</html>



