<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.io.*,java.sql.*;" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>complaintprocess</title>
</head>
<body>
<%
String s1=request.getParameter("area").toString();
String s2=request.getParameter("dept").toString();
String s3=request.getParameter("addr").toString();
String s4=request.getParameter("sub").toString();
String s5=request.getParameter("desc").toString();
int a=Integer.parseInt(s1);
int b=Integer.parseInt(s2);


Connection conn=null;
ResultSet rs=null;
Statement st=null;
Class.forName("com.ibm.db2.jcc.DB2Driver").newInstance();
conn=DriverManager.getConnection("jdbc:db2://localhost:50000/MEGADEUS","Vaidhyanathan","72zwbn");
//get id from session
String si=session.getAttribute("emailid").toString();
//to insert complaint
String myquery="INSERT INTO CCCMA.COMPLAINTREGISTRATION (DISTRICTNAME, CITYNAME, AREA, DEPARTMENT, SUBJECT, DESCRIPTION, ADDRESS, UP, PROGRESS, USERID) VALUES (?,?,?,?,?,?,?,?,?,?)  ";


PreparedStatement pre=conn.prepareStatement(myquery);
pre.setInt(1, 1);
pre.setInt(2, 1);
pre.setInt(3, a);
pre.setInt(4, b);
pre.setString(5, s4);
pre.setString(6, s5);
pre.setString(7, s3);
pre.setInt(8, 1);
pre.setString(9, "REGISTERED");
pre.setString(10, si);
pre.executeUpdate();
conn.close();
String url=response.encodeRedirectURL("complaintview.jsp");
response.sendRedirect(url);

%>

</body>
</html>