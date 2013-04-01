
<%@ page import="pcsoftapp.Response" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="distributor">
		<g:set var="entityName" value="${message(code: 'response.label', default: 'Response')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
	<div class="main_content">
	<div class="main_content_top"></div>
  	<div id="boxes_content">	
		<center>
		<div id="show-response" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list response">
			
				<g:if test="${responseInstance?.complaint}">
				<li class="fieldcontain">
					<h2>Complaint from the consumer:</h2>
					
						<h2><span class="property-value" aria-labelledby="complaint-label"><g:link controller="complaint" action="show" id="${responseInstance?.complaint?.id}">${responseInstance?.complaint?.encodeAsHTML()}</g:link></span></h2>
					
				</li>
				</g:if>
				
				<g:if test="${responseInstance?.response}">
				<li class="fieldcontain">
					<h2>Your response Details:</h2>
					
						<h2><span class="property-value" aria-labelledby="response-label"><g:fieldValue bean="${responseInstance}" field="response"/></span></h2>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${responseInstance?.id}" />
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
