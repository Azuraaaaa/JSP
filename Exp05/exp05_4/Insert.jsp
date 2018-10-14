<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
 
<html>
<head>
<title>INSERT 操作</title>
</head>
<body>
	
	<sql:setDataSource var="snapshot" driver="com.mysql.jdbc.Driver"
	     url="jdbc:mysql://localhost:3306/test"
	     user="root"
		 password="123456"/>
	<!--插入数据-->
	<sql:update dataSource="${snapshot}" var="result">
	INSERT INTO employee (emp_id,emp_name,job,salary,dept) VALUES (1, '王楠', 'clerk', 4300.00,'10'),
	(2, '张敬', 'clerk', 4300.00,'10'), 
	(3, '李刚', 'manager', 5000.00,'20'),
	(4, '马明', 'manager', 5000.00,'20');
	</sql:update>
	<sql:query dataSource="${snapshot}" var="result">
	SELECT * from employee;
	</sql:query>
	<h1>JSP插入数据</h1>
		<table border="1" width="100%">
		<tr>
		   <th>emp_id</th>
		   <th>emp_name</th>
		   <th>job</th>
		   <th>salary</th>
		   <th>dept</th>
		</tr>
		<c:forEach var="row" items="${result.rows}">
		<tr>
		   <td><c:out value="${row.emp_id}"/></td>
		   <td><c:out value="${row.emp_name}"/></td>
		   <td><c:out value="${row.job}"/></td>
		   <td><c:out value="${row.salary}"/></td>
		   <td><c:out value="${row.dept}"/></td>
		</tr>
		</c:forEach>
		</table>
</body>
</html>