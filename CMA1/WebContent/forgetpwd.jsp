<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%><html>
<head>
<title>Forget Password</title>
<link rel="stylesheet" type="text/css" href="main.css"  />
<script type="text/javascript">
function check()
{
var a=document.getElementById('txt1').value;
document.getElementById('cont').innerHTML="<p>Mail has been sent to"+a+"</p>";
}
</script>

</head>
<body id="mainbody">
<div id="bods">
<img src="cma.jpg"/>
<div id="cont" align="center">
<p>Enter your Mail</p>  <br /><input type="text" id="txt1"></input> <br />
<button type="submit" class="button_example" onclick="check()">Submit</button>
</div>
</div>
</body>
</html>