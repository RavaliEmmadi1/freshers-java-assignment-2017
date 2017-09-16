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
String id= request.getParameter("txtid");
String name=request.getParameter("txtname");
String type=request.getParameter("Type");
String price=request.getParameter("txtprice");
Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
Connection conn = DriverManager.getConnection("jdbc:odbc:Ravali","hr","hr");
PreparedStatement st=conn.prepareStatement("Insert into Menu values(?,?,?,?)");
st.setString(1,type);
st.setInt(2,Integer.parseInt(id));
st.setString(3,name);
st.setInt(4,Integer.parseInt(price));
int n=st.executeUpdate();
if(n>=1)
	response.sendRedirect("addtomenu.html");
else
	out.println("Please check the error");
%>
</body>
</html>