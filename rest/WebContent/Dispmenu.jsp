<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@page import="java.sql.*" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Display menu</title>
</head>
<body>
<form name="f1" action="order.jsp" method="get">
<%
String cna[]=request.getParameterValues("t1");
out.println("<h2>Welcome  "+cna[0]+" ,your table is booked</h2>");
out.println("<hr>");
%>
<center><h1 style="color:blue">Menu</h1></center>
<table>
<tr><th>Starters</th></tr>
<tr><th>id</th><th>name</th><th>price</th></tr>
<%
Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
Connection conn = DriverManager.getConnection("jdbc:odbc:Ravali","hr","hr");
PreparedStatement st=conn.prepareStatement("Select * from Menu  where Type='Starters' order by id");
ResultSet rs= st.executeQuery();
while(rs.next())
{
%>
<tr><td><%=rs.getInt("id")%></td>
<td><%=rs.getString("name")%></td>
<td><%=rs.getInt("price")%></td>
<%
}
%>
<tr><th>Main Course</th></tr>
<tr><th>id</th><th>name</th><th>price</th></tr>
<%
PreparedStatement st1=conn.prepareStatement("Select * from Menu where Type='Main Course' order by id");
ResultSet rs1= st1.executeQuery();
while(rs1.next())
{
%>
<tr><td><%=rs1.getInt("id")%></td>
<td><%=rs1.getString("name") %></td>
<td><%=rs1.getInt("price")%></td></tr>
<%
}
%>
<tr><th>Beverages</th></tr>
<tr><th>id</th><th>name</th><th>price</th></tr>
<%
PreparedStatement st2=conn.prepareStatement("Select * from Menu  where Type='Bevarages' order by id");
ResultSet rs2= st2.executeQuery();
while(rs2.next())
{
%>
<tr><td><%=rs2.getInt("id")%></td>
<td><%=rs2.getString("name") %></td>
<td><%=rs2.getInt("price")%></td></tr>
<%
}
%>
<tr><th>Desserts</th></tr>
<tr><th>id</th><th>name</th><th>price</th></tr>
<%
PreparedStatement st3=conn.prepareStatement("Select * from Menu where Type='Desserts' order by id");
ResultSet rs3= st3.executeQuery();
while(rs3.next())
{
%>
<tr><td><%=rs3.getInt("id")%></td>
<td><%=rs3.getString("name") %></td>
<td><%=rs3.getInt("price")%></td></tr>
<%
}
%>
<tr><td><input type ="submit" value="select items"></td></tr>
</table>
</form>
</body>
</html>
