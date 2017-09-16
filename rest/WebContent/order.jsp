<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@page import="java.sql.*" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Order</title>
</head>
<body>
<form name="f1" action="bill.jsp" method="post">
<table>
<tr><th>Starters</th></tr>
<tr><th>id</th><th>name</th><th>price&nbsp;&nbsp;&nbsp;</th><th>Quantity</th></tr>
<%
Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
Connection conn = DriverManager.getConnection("jdbc:odbc:Ravali","hr","hr");
PreparedStatement st=conn.prepareStatement("Select * from Menu  where Type='Starters'");
ResultSet rs= st.executeQuery();
int na=1;
while(rs.next())
{
%>
<tr><td><%=rs.getInt("id")%></td>
<td><%=rs.getString("name")%></td>
<td><%=rs.getInt("price")%></td>
<td><input type="checkbox"  name="chk1" value="<%=rs.getString("name")%>"/></td>
<%String txtn = "qty" +na;
		na++; %>
		<td><input type="text" name="txtn" value="0"/></td></tr>
<%
}
%>
<tr><th>Main Course</th></tr>
<tr><th>id</th><th>name</th><th>price</th></tr>
<%
PreparedStatement st1=conn.prepareStatement("Select * from Menu where Type='Main Course'");
ResultSet rs1= st1.executeQuery();
while(rs1.next())
{
%>
<tr><td><%=rs1.getInt("id")%></td>
<td><%=rs1.getString("name") %></td>
<td><%=rs1.getInt("price")%></td>
<td><input type="checkbox" name=chk2 value="<%=rs1.getString("name")%>"/></td>
<%String txtn = "qty" +na;
		na++; %>
		<td><input type="text" name="txtn" value="0"/></td></tr>
<%
}
%>
<tr><th>Beverages</th></tr>
<tr><th>id</th><th>name</th><th>price</th></tr>
<%
PreparedStatement st2=conn.prepareStatement("Select * from Menu  where Type='Bevarages'");
ResultSet rs2= st2.executeQuery();
while(rs2.next())
{
%>
<tr><td><%=rs2.getInt("id")%></td>
<td><%=rs2.getString("name") %></td>
<td><%=rs2.getInt("price")%></td>
<td><input type="checkbox" name=chk3 value="<%=rs2.getString("name")%>"/></td>
<%String txtn = "qty" +na;
		na++; %>
		<td><input type="text" name="txtn"value="0"/></td></tr>
<%
}
%>
<tr><th>Desserts</th></tr>
<tr><th>id</th><th>name</th><th>price</th></tr>
<%
PreparedStatement st3=conn.prepareStatement("Select * from Menu where Type='Desserts'");
ResultSet rs3= st3.executeQuery();
while(rs3.next())
{
%>
<tr><td><%=rs3.getInt("id")%></td>
<td><%=rs3.getString("name") %></td>
<td><%=rs3.getInt("price")%></td>
<td><input type="checkbox" name=chk4 value="<%=rs3.getString("name")%>"/></td>
<%String txtn = "qty" +na;
		na++; %>
		<td><input type="text" name="txtn"value="0"/></td></tr>
<%
}
%>
<tr><td><input type="submit" value="order" /></td></tr>
</table>
</form>
</body>

</html>
