<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core" %>   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>외부의 자원을 가져다 주는 액션태그</title>
</head>
<body>
<%
    //String url="http://www.naver.com";
    //네이버와 다음은 외부에서 접근이 못하게 설정->302 (접근금지)
    //import  url="접속사이트 주소"  var="접속해서 가져올 데이터저장할 변수"
%>
<c:set var="url" value="http://www.chosun.com" />
<c:import url="${url}" var="u" />
<c:out value="${url}" />가져옵니다.<p>
<c:out value="${u}"  escapeXml="false" />

<h4>내부자원을 가져오기</h4>
<!--chooseTag.jsp?name=bk (Get방식으로 매개변수 전달) -->
<c:set var="url" value="chooseTag.jsp" />
<c:import url="${url}"  var="u">
   <c:param name="name2" value="bk" />
</c:import>
<c:out value="${u}"  escapeXml="false" />
</body>
</html>



