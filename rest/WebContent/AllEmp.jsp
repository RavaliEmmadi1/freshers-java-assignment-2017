<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@page import="java.sql.*" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<table border="1">
<tr><th>Empno</th><th>Empname</th><th>Job</th><th>Salary</th></tr>
<% 
Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
Connection conn = DriverManager.getConnection("jdbc:odbc:Ravali","hr","hr");
PreparedStatement st=conn.prepareStatement("Select * from employee");
ResultSet rs=st.executeQuery();
while(rs.next())
{
%>
<tr><td><%=rs.getInt("Empno")%></td>
<td><%=rs.getString("Empname")%></td>
<td><%=rs.getString("Job")%></td>
<td><%=rs.getInt("Salary")%></td></tr>
<%
}
%>
</table>
</body>
</html>