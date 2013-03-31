
<%@ page import="owlingapp.Feedback" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'feedback.label', default: 'Feedback')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
	<div class="main_content">
	<div class="main_content_top"></div>
  	<div id="boxes_content">	
		<center>
		<div id="show-feedback" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list feedback">
			
			
				<g:if test="${feedbackInstance?.response}">
				<li class="fieldcontain">
					<h2>Response from the Distributor:</h2>
						<h2><span class="property-value" aria-labelledby="response-label"><g:link controller="response" action="show" id="${feedbackInstance?.response?.id}">${feedbackInstance?.response?.encodeAsHTML()}</g:link></span></h2>
					
				</li>
				</g:if>
				
				<g:if test="${feedbackInstance?.feedback}">
				<li class="fieldcontain">
					<h2>Your feedback details:</h2>
					
						<h2><span class="property-value" aria-labelledby="feedback-label"><g:fieldValue bean="${feedbackInstance}" field="feedback"/></span></h2>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${feedbackInstance?.id}" />
					<g:actionSubmit class="edit" action="edit" value="${message(code: 'default.button.edit.label', default: 'Edit')}" />
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
		</center>
		</div>
		</div>
	</body>
</html>
