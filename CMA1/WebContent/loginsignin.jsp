<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    %>
     <%@page import="java.util.*,java.sql.*,java.io.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
String emailid=request.getParameter("userid").toString();
String pass=request.getParameter("password").toString();
Connection conn=null;
ResultSet rs=null;
Statement st=null; 
Class.forName("com.ibm.db2.jcc.DB2Driver").newInstance();
conn=DriverManager.getConnection("jdbc:db2://localhost:50000/MEGADEUS","Vaidhyanathan","72zwbn");
String checksql="SELECT * FROM CCCMA.USETABLE WHERE USERID=? AND PASSWORD=?" ;

PreparedStatement precheck=conn.prepareStatement(checksql);
precheck.setString(1, emailid);
precheck.setString(2, pass);
rs=precheck.executeQuery();


if(rs.next())
{
	String s1=rs.getString("USERID");
	
	session.setAttribute("emailid", s1);
conn.close();	
	String url = response.encodeRedirectURL("complaintregform.jsp");
    response.sendRedirect(url);
	}

else{
	session.setAttribute("index_signin_error", "EmailID already Exists");
	String url = response.encodeRedirectURL("loginuser.jsp");
    response.sendRedirect(url);
    conn.close();
}
%>
</body>
</html>