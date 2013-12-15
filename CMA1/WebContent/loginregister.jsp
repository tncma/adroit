<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ page import="java.io.*,java.sql.*;" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%


String s1=request.getParameter("userid2").toString();

String s2=request.getParameter("password2").toString();

String s3=request.getParameter("name").toString();
//db connection
Connection conn=null;
ResultSet rs=null;
Statement st=null;
Class.forName("com.ibm.db2.jcc.DB2Driver").newInstance();
conn=DriverManager.getConnection("jdbc:db2://localhost:50000/MEGADEUS","Vaidhyanathan","72zwbn");
String checksql="SELECT * FROM CCCMA.USETABLE WHERE USERID='" +s1 + "'";

PreparedStatement precheck=conn.prepareStatement(checksql);
//precheck.setString(1, s2);
rs=precheck.executeQuery();
//if email already exists
if(rs.next())
{
	
	conn.close();
	session.setAttribute("index_signup_error", "EmailID already Exists");
	String url = response.encodeRedirectURL("loginuser.jsp");
    response.sendRedirect(url);
	
	}


//if new user
String myquery="INSERT INTO VAIDHYANATHAN.USETABLE (USERID, PASSWORD, NAME) VALUES (?,?,?)  ";


PreparedStatement pre=conn.prepareStatement(myquery);
pre.setString(1, s1);
pre.setString(2, s2);
pre.setInt(3, s3);
pre.executeUpdate();

conn.close();
//to set userid in session
session.setAttribute("userid2", s1);


		String url = response.encodeRedirectURL("complaintregform.jsp");
	    response.sendRedirect(url);
		

%>

</body>
</html>