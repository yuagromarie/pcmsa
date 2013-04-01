<%@ page import="pcsoftapp.Complaint" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="consumer">
		<link href="style.css" rel="stylesheet" type="text/css" media="screen" />
		<g:set var="entityName" value="${message(code: 'complaint.label', default: 'Complaint')}" />
		<title>Customer Service</title>
	</head>
	<body>
	 <div class="main_content">
  <div class="main_content_top"></div>
  	<div id="boxes_content">
    <center>
<h1>Customer Service</h1>
	<a href="create"> <img src="../images/create.png" alt="" title="Send Complaint(s)" border="0" width="150" height="167"/> </a>
	<a href="list"><img src="../images/viewcomplaints.png" alt="" title="View Complaints" border="0" width="150" height="167" /> </a>
	<a href="/pcsoftapp/services/list" title="Available Services"><img src="../images/available_services.png" alt="" title="" border="0" width="150" height="167"/></a></br>
	<center><b>Send us <a href="/pcsoftapp/feedback/create">feedback.</a></b></center>
	
		
		
		</center>
		</div>
		</div>
		</div>
	</body>
</html>




