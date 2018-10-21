<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%> 
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'index.jsp' starting page</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
  </head>
  
  <body>
    <% 
        Map map = new HashMap();
        map.put("百度", "http://www.baidu.com");
        map.put("雅虎", "http://cn.yahoo.com");
        map.put("谷歌", "http://www.google.com");
        pageContext.setAttribute("map", map);
        
     %>
      <table border="1" width="100%" cellspacing="0">
       <c:forEach var="item" items="${map}" >
	      <tr align="center">
	         <td><c:out value="${item.key}"/></td>
	         <td><c:out value="${item.value}"/></td>
	      </tr>
       </c:forEach>
      </table>
  </body>
</html>
