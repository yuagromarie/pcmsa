
<%@ page import="owlingapp.Feedback" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'feedback.label', default: 'Feedback')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<div class="main_content">
		<div class="main_content_top"></div>
		<div id="boxes_content">
		<center>
		<div id="list-feedback" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="feedback" title="${message(code: 'feedback.feedback.label', default: 'Feedback')}" />
					
						<th><g:message code="feedback.response.label" default="Response" /></th>
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${feedbackInstanceList}" status="i" var="feedbackInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${feedbackInstance.id}">${fieldValue(bean: feedbackInstance, field: "feedback")}</g:link></td>
					
						<td>${fieldValue(bean: feedbackInstance, field: "response")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${feedbackInstanceTotal}" />
			</div>
		</div>
		</center>
		</div>
		</div>
	</body>
</html>
