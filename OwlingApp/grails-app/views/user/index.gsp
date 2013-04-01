<html>
<head>
<meta name="layout" content="main"/>
<title></title>
<style type="text/css">
label {
float:left;
width:65px;
}
</style>
</head>
<body>
${flash.message}
<g:if test="${session.user}">
<br/>
Login as : ${session.user} | <g:link action= "logout">Logout</g:link>
</g:if>
<g:else>

	<g:form controller="User" action="login" style="padding-left-200px">
	<div style="width:220px">
	<label>Name:</label><input type="text" name="password" />
	<labe>Password:</label><input type="password" name="password" />
	<label>&nbsp;</label><input type="submit" value="Login" />
</div>

</g:form>
</g:else>
</body>
</html>