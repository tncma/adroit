<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*,java.io.*;" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-

transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Tamilnadu Complaint Zone</title>
<link rel="stylesheet" type="text/css" href="main.css"  />
<style type="text/css">
#counts {
	font-family: Arial, Helvetica, sans-serif;
	font-size: 14px;
	color: #ffffff;
	
	height:30px;
	width:30px;
	background: -moz-linear-gradient(
		top,
		#42aaff 0%,
		#003366);
	background: -webkit-gradient(
		linear, left top, left bottom, 
		from(#42aaff),
		to(#003366));
	-moz-border-radius: 8px;
	-webkit-border-radius: 8px;
	border-radius: 8px;
	border: 1px solid #003366;
	-moz-box-shadow:
		0px 1px 3px rgba(000,000,000,0.2),
		inset 0px 0px 1px rgba(255,255,255,0.5);
	-webkit-box-shadow:
		0px 1px 3px rgba(000,000,000,0.2),
		inset 0px 0px 1px rgba(255,255,255,0.5);
	box-shadow:
		0px 1px 3px rgba(000,000,000,0.2),
		inset 0px 0px 1px rgba(255,255,255,0.5);
	
}



#content
{
border:2px solid;
height:auto;
width:60%;
margin-left:5px;
border-color:#ccc;
}

#desc
{
border:2px solid;
height:auto;
width:35%;
margin-right:5px;
border-color:#ccc;
}
</style>
<script type="text/javascript">
function aja()
{		str=document.getElementById('area').value;
	document.getElementById("content").innerHTML="Loading...";
	var xreq;
	if(str=="")
	{
	document.getElementById("content").innerHTML="";
	return;
	}
	if(window.XMLHttpRequest)
	{
	xreq=new XMLHttpRequest();
	}
	else
	{
	xreq=new ActiveXObject("Microsoft.XMLHTTP");
	}
	xreq.onreadystatechange=function ()
	{
	if( (xreq.readyState==4) && (xreq.status==200) )
	{
	document.getElementById("content").innerHTML 
	                                   =xreq.responseText;

	}
	}
	xreq.open("get","viewradio.jsp?ID="+str,"true");
	xreq.send();

	
}



</script>


<body id="mainbody"  >
<%



//db connection
Connection conn=null;
ResultSet rs=null;
ResultSet rs1=null;
Statement st=null;
Class.forName("com.ibm.db2.jcc.DB2Driver").newInstance();
conn=DriverManager.getConnection("jdbc:db2://localhost:50000/MEGADEUS","Vaidhyanathan","72zwbn");
%>




<div id="bods">
<img src="cma.jpg"/>
<center>Select your Area 
<select id="area" onchange="aja()">


<%
String fetcharea="SELECT * FROM CCCMA.AREA";

PreparedStatement precheck=conn.prepareStatement(fetcharea);
//precheck.setString(1, s2);
rs=precheck.executeQuery();
while(rs.next())
{
	String s=rs.getString("ID").toString();
	int a=Integer.parseInt(s);
%>
<option value=" + <%=a%>+ ">
<%
rs.getString("NAME").toString();
%>
</option>
<%
} 
	%>
	
	
	
</select> </center>

<div id="container">
<div id="content" style="float:left;"> 



<div id="desc" style="float:right;">
<h1 id="complainthead"><%=rs.getString("SUBJECT")%> </h1>
<p id="complaintdesc"><%=rs.getString("DESCRIPTION")%><% rs.close(); %> </p>
</div>
</div>
</div>
</body>
</html>