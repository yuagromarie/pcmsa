<%@ page import="owlingapp.Complaint" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="consumer">
		<link href="style.css" rel="stylesheet" type="text/css" media="screen" />
		<g:set var="entityName" value="${message(code: 'complaint.label', default: 'Complaint')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
	 <div class="main_content">
  <div class="main_content_top"></div>
  	<div id="boxes_content">
    <center>
	<img src="../images/sexy.png" alt="" title="Send Complaint(s)" border="0" width="150" height="167"/>
<h1>Customer Service</h1>
<h1>Sent Items</h1>
		<b>
		<div id="list-complaint" class="content scaffold-list" role="main">
			
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<td>
				<thead>
					<tr>
					
						<g:sortableColumn property="complaint_Type" title="${message(code: 'complaint.complaint_Type.label', default: 'Priority Level')}" />
					
						<g:sortableColumn property="complaint" title="${message(code: 'complaint.complaint.label', default: 'Content')}" />
						
						
						
					</tr>
				</thead>
				<tbody>
				<g:each in="${complaintInstanceList}" status="i" var="complaintInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}" cellspacing="1">
					
						<td><g:link action="show" id="${complaintInstance.id}">${fieldValue(bean: complaintInstance, field: "complaint_Type")}</g:link></td>
					
						<td>${fieldValue(bean: complaintInstance, field: "complaint")}</td>
						
						
						
					</tr>
				</g:each>
				</tbody>
			</td>
			</table>
			<div class="pagination">
				<g:paginate total="${complaintInstanceTotal}" />
			</div>
		</div>
		</b>
		</center>
		</div>
		</div>
		</div>
	</body>
</html>
