<%@ page import="pcsoftapp.Response" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'response.label', default: 'Response')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
	<div class="main_content">
	<div class="main_content_top"></div>
  	<div id="boxes_content">
    <center>
		<center><a href="create"><img src="../images/man_red.png" alt="" title="Send Response"></a></center>
		<div id="list-response" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
	
						<g:sortableColumn property="response" title="${message(code: 'response.response.label', default: 'Response')}" />
					
						<th><g:message code="response.complaint.label" default="Complaint" /></th>
						
					</tr>
				</thead>
				<tbody>
				<g:each in="${responseInstanceList}" status="i" var="responseInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${responseInstance.id}">${fieldValue(bean: responseInstance, field: "response")}</g:link></td>
					
						<td>${fieldValue(bean: responseInstance, field: "complaint")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
		</div>
		</div>
		</div>
		</center>
	</body>
</html>
