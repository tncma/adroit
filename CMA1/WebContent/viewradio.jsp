<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
       <%@ page import="java.sql.*,java.io.*;" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%



//db connection
Connection conn=null;
ResultSet rs=null;
ResultSet rs1=null;
Statement st=null;
Class.forName("com.ibm.db2.jcc.DB2Driver").newInstance();
conn=DriverManager.getConnection("jdbc:db2://localhost:50000/MEGADEUS","Vaidhyanathan","72zwbn");
%>
<%
String s1=rs.getString("AREANAME").toString(); 
int a1=Integer.parseInt("s1");
String com="SELECT * FROM CCCNA.COMPLAINT WHERE AREA='a1' ORDER BY SUBJECT ";

PreparedStatement comp=conn.prepareStatement(com);
%>
<div id="content" style="float:left;"> 

<% rs=comp.executeQuery();
while(rs.next())
{
	%>
<input type="radio" name="sub" value=<%=rs.getString("ID").toString() %>><%=rs.getString("SUBJECT").toString() %>



<%
String cnt="SELECT * FROM CCCMA.COUNT ";

PreparedStatement cntchk=conn.prepareStatement(cnt);
rs1=cntchk.executeQuery();
%>


		<button id="counts" onclick=
		<%//PreparedStatement stmt = con.prepareStatement("INSERT INTO TableName VALUES (?, ?)");
//stmt.setString(1,value1a);; %>>+<span>
		<%=rs1.getString("COUNT") %>
		</span></button>
			<label id="prog"><%=rs.getString("PROGRESS") %></label>

</div>
<%} %>
</body>
</html>