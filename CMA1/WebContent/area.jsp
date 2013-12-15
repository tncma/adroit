<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
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

</script>
<style type="text/css">
#icons {
		margin: 0;
		padding: 0;
	}
	#icons li {
		margin: 2px;
		position: relative;
		padding: 4px 0;
		cursor: pointer;
		float: left;
		list-style: none;
	}
	#icons span.ui-icon {
		float: left;
		margin: 0 4px;
	}
</style>
<script type="text/javascript">
function fun()
{
	document.getElementById('img').innerHTML="";
}
</script>
</head>

<body>
<form id="form1" name="form1" method="post" action="">
  <p>
    <label>
      <input type="radio" name="area" value="radio" id="area_0"  onclick="load_content"/>
      Radio</label>
      
      <div id="img">
      <input type="button" class="ui-button" value="+" onclick="fun()" / >   </div>    <br />
      
      
   
  </p>
</form>
</body>
</html>
