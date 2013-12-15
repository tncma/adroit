<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*, java.io.*;"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Complaint Registration</title>
<link rel="stylesheet" type="text/css" href="main.css"  />
<script type="text/javascript">
function getdate()
{
var d = new Date();
var date = d.getDate();
var mon =d.getMonth() +1;
var year = d.getFullYear();
var x = document.getElementById("date");
x.innerHTML=date+"/"+mon+"/"+year;
}

function checking()
{

var errmsg="";
var x=document.forms["form1"]["area"].value;
var y =document.forms["form1"]["desc"].value;
var z =document.forms["form1"]["sub"].value;
var k= document.forms["form1"]["dept"].value;

if(  x=="" || y=="" || z=="" || k=="")
errmsg="Please Enter all the values";

 if(errmsg!="")
 {
	errmsg="" + errmsg;
  document.getElementById("error_message").innerHTML=errmsg;
 
  
}
 
}
</script>

</head>
<body id="mainbody" onload="getdate()">
<%
//db connection
Connection conn=null;
ResultSet rs=null;
Statement st=null;
Class.forName("com.ibm.db2.jcc.DB2Driver").newInstance();
conn=DriverManager.getConnection("jdbc:db2://localhost:50000/MEGADEUS","Vaidhyanathan","72zwbn");
%>

<div id="bods">
<img src="cma.jpg"/>
<div id="cont" align="center">
 
<div style="float:right;">Date<b  id="date"></b></div> <br />
<form id="form1" onsubmit="checking()" method="get" action="complaintreg.jsp">
<table>
<tr>
<td>
Select your Area <sup class="let">*</sup> 
</td>
<td>
<select id="area" name="area" size="1">
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
<option value=<%=a%>>
<%=rs.getString("NAME").toString()
%>
</option>
<%} 	
	
	%>
	


</select> </td>
</tr>
<tr>
<td>
Select Department<sup class="let">*</sup>
</td>
<td>
<select id="dept" name="dept" size="1">
<%
String fetchdept="SELECT * FROM CCCMA.DEPARMENT";

PreparedStatement precheck1=conn.prepareStatement(fetchdept);
//precheck.setString(1, s2);
rs=precheck1.executeQuery();
while(rs.next())
{
	String s1=rs.getString("ID").toString();
	int a1=Integer.parseInt(s1);
%>
<option value= <%=a1%>>
<%=rs.getString("DEPARTMENTNAME").toString()
%>
</option>
<%} 	
	conn.close();
	%>
</select> 
</td>
</tr>
<tr>
<td>
Subject<sup class="let">*</sup>  
</td>
<td><input type="text" id="sub" name="sub"> </td>
</tr>

<tr>
<td>
Description<sup class="let">*</sup> 
</td>
<td> <input type="textarea" id="desc" name="desc"> </td> </tr>
<tr>
<td>
Address<sup class="let">*</sup> 
</td>
<td> <input type="textarea" id="addr" name="addr"> </td> </tr>
 <tr>
    <td colspan="2">
    
   <div id="error_message" style="height:40px;"></div>
    
    </td>
    
  </tr>
      <tr>
        <td>&nbsp;</td>
        <td><input type="submit" name="submit" id="button" value="Submit" /></td>
      </tr>
      <br />
    </table>
  

</form>

</div>
</div>
</body>
</html>
