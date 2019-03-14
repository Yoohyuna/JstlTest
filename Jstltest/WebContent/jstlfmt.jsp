<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core" %>
 <%@ taglib prefix="fmt"  uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jstlfmt.jsp(날짜,시간,숫자출력)</title>
</head>
<body><!--ko-KR ,js-Jp,en-US(언어-국가명) setLocale액션태그 value=? 
            SimpleTextFormat 클래스를 이용해서 처리 -->
            
 <fmt:setLocale value="ko-KR" />
 <h1><!-- value(출력할값을 지정) , type(숫자,통화,퍼센트 단위를 지정)  -->
 number:<fmt:formatNumber  value="9876543.61"  type="number" /><br>
 currency:<fmt:formatNumber  value="9876543.61"  type="currency" /><br>
 percent:<fmt:formatNumber   type="percent" >
                      9876543.61
             </fmt:formatNumber><p>
 <!-- 사용자정의 형식포맷으로 지정하고 싶다. pattern=설정할 타입포맷 지정  -->            
pattern=".000" :<fmt:formatNumber  value="9876543.61"  pattern=".000" /><br>

pattern="#,#00.0#":<fmt:formatNumber  value="9876543.61"  pattern="#,#00.0#" /><br>
 
<hr>
<%-- <c:set var="now" value=<%=new java.util.Date()%> --%>
<jsp:useBean id="now"  class="java.util.Date" />
<c:out value="${now}" /><p>

 <!-- formatDate 액션태그 value="출력할값"  type(날짜만,시간만,둘다 출력) -->
 
 date:<fmt:formatDate value="${now}"  type="date" /><br>
 time:<fmt:formatDate value="${now}"  type="time" /><br>
 both:<fmt:formatDate value="${now}"  type="both" /><br>
 <hr>
 
 <!-- dateStyle(날짜만 세부적으로 설정), timeStyle(시간을 세부적으로 설정) -->
 default:<fmt:formatDate value="${now}" type="both"
                                      dateStyle="default"  timeStyle="default" /><br>
                                      
 short:   <fmt:formatDate value="${now}" type="both"
                                      dateStyle="short"  timeStyle="short" /><br> 
                                        
 medium:<fmt:formatDate value="${now}" type="both"
                                      dateStyle="medium"  timeStyle="medium" /><br>
                                      
 long:<fmt:formatDate value="${now}" type="both"
                                      dateStyle="long"  timeStyle="long" /><br>
                                      
 full:<fmt:formatDate value="${now}" type="both"
                                      dateStyle="full"  timeStyle="full" /><br>
                                      
 pattern:"yy년 MM월 dd일 HH시 mm분 ss초":
           <fmt:formatDate value="${now}"  type="both"
                                      pattern="yy년 MM월 dd일 HH시 mm분 ss" /><br> 
 
 <fmt:timeZone value="US/Eastern">
          <fmt:formatDate value="${now}"  type="both"
                                      pattern="yy년 MM월 dd일 HH시 mm분 ss" /><br>
 </fmt:timeZone>                                                            
 </h1>
</body>
</html>





