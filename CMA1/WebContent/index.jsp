<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%><!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Untitled Document</title>

<link href="css/flick/jquery-ui-1.9.2.custom.css" rel="stylesheet" type="text/css" />
<link href="css/flick/jquery-ui-1.9.2.custom.min.css" rel="stylesheet" type="text/css" />
<link href="css/main.css" rel="stylesheet" type="text/css"/>
<script type="text/javascript" src="js/jquery-1.8.3.js"></script>
<script type="text/javascript" src="js/jquery-ui-1.9.2.custom.js"></script>
<script type="text/javascript" src="js/jquery-ui-1.9.2.custom.min.js"></script>
<script type="text/javascript">
$(function() {
$("#login").button();
$("#login2").button();
});
</script>
</head>


<body>
<div id="page" align="center">
<p><img src="images/cma.jpg" width="450" height="112" alt="header" /></p>
<p>&nbsp;</p>
<p>&nbsp; </p>
<table width="621" border="0">
  <tr>
    <td width="271"><div class="ui-state-focus"><form id="form1" name="form1" method="post" action="loginsignin.jsp" >
      <p>&nbsp;</p>
      <p>
        <label for="userid">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;UserId</label>
        <input type="text" name="userid" id="userid" class="ui-widget" />
      </p>
      <p>
        <label for="password">Password</label>
        <input name="password" type="password" class="ui-widget" id="password" />
      </p>
      <p align="right" style="font-size:11px;"> <a href="forgetpassword.html" style="text-decoration:none; color:#933">Forget Password ?</a> &nbsp;&nbsp;&nbsp;    
        </p>
      <center>  
        <p>
          <input type="submit" name="login" id="login" value="Login" />
        </p>
      </center>
      </p>
    </form></div></td>
    <td width="76"><center><input type="image" name="OR" id="OR" src="Challenge.jpg" /></center></td>
    <td width="260"><div class="ui-state-focus"><form id="form2" name="form2" method="post" action="">
      <p>&nbsp;</p>
     
      <p>
        <label for="userid2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;UserId</label>
        <input name="userid2" type="text" class="ui-widget" id="userid2" />
    </p>
     <p>
        <label for="name">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Name</label>
        <input name="name" type="text" class="ui-widget" id="name" />
    </p>
      <p>
        <label for="password">Password</label>
        <input name="password2" type="password" class="ui-widget" id="password2" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      </p>
      <center>
          <p>
            <input type="submit" name="login2" id="login2" value="Register" /></p></center></form>
    </div>
    </td>
  </tr>
  
</table>
</div></div></body>
</html>
