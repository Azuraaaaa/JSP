<%@ page language="java" import="java.util.*" import="exp02.Student" pageEncoding="utf-8"%>

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'exp02-2.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<style>
		table{
			margin: 100px auto;
			border: 2px #000 solid;
		}
		.b{
			border: 1px #000 solid;
			padding: 10px;
		}
	</style>
  </head>
  <body>
  <% 
	  String []s=new String[]{"学号","姓名","性别","班级","成绩"};
	  out.println("<table>");
	  for(int i=0;i<s.length;i++){
		  out.println("<th class='b'>");
		  out.println(s[i]);
		  out.println("</th>");
		  
	  }
	  	ArrayList<Student> stu=new ArrayList<Student>();
		stu.add(new Student("001","李白","男","01",723.0));
		stu.add(new Student("002","孟浩然","男","02",689.0));
		stu.add(new Student("003","杨玉环","女","03",600.0));
	    java.util.Iterator<Student> i=stu.iterator();
	  	while(i.hasNext()){
		  Student s1=(Student)i.next(); 
		  out.println("<tr>");
		  out.println("<td class='b'>");
		  out.println(s1.getStudentId());
		  out.println("</td>");
		  out.println("<td class='b'>");
		  out.println(s1.getStudentName());
		  out.println("</td>");
		  out.println("<td class='b'>");
		  out.println(s1.getStudentSex());
		  out.println("</td>");
		  out.println("<td class='b'>");
		  out.println(s1.getStudentClass());
		  out.println("</td>");
		  out.println("<td class='b'>");
		  out.println(s1.getStudentGrade());
		  out.println("</td>");
		  out.println("</tr>");  
	  }
	  out.println("</table>");
	%>
  </body>

</html>


