<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
<head>
	<title>Home</title>
</head>
<body>
<h1>
	Hello world!  
</h1>

<P>  The time on the server is ${serverTime}. </P>
<P>  <ul>
	<li>current instance IP ${serverIp} </li>
	<li>current DEA instance PORT ${deaPort} </li>
	<li><i>go to <a href="/env">/env</a> to see the current environment</i></li>
</ul></P>
</body>
</html>
