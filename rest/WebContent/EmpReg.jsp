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
<%
String eno=request.getParameter("txtEno");
String ename=request.getParameter("txtEname");
String job=request.getParameter("empjob");
String sal=request.getParameter("txtSal");
Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
Connection conn = DriverManager.getConnection("jdbc:odbc:Ravali","hr","hr");
PreparedStatement st=conn.prepareStatement("Insert into Employee values(?,?,?,?)");
st.setInt(1,Integer.parseInt(eno));
st.setString(2,ename);
st.setString(3,job);
st.setInt(4,Integer.parseInt(sal));
int z=st.executeUpdate();
if(z>=1)
	out.println("<h1> Employee Registered </h2>");
%>
</body>
</html>