<%@ page import="pcsoftapp.Complaint" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="consumer">
		<g:set var="entityName" value="${message(code: 'complaint.label', default: 'Complaint')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		
			<div class="main_content">
  <div class="main_content_top"></div>
  	<div id="boxes_content">
		
		<center>

`		<div class="nav" role="navigation">
			
		</div>
		
		<div id="show-complaint" class="content scaffold-show" role="main">
			<center><h1><g:message code="default.show.label" args="[entityName]" /></h1></center>
			<center><g:if test="${flash.message}">
			<div class="message" role="status">Complaint sent! We'll fix that soon.</div>
			</g:if>
			</center>
			<ol class="property-list complaint">
			<b>
				<g:if test="${complaintInstance?.complaint_Type}">
				<li class="fieldcontain">
					<center><span id="complaint_Type-label" class="property-label">Complaint Type:</span></center>
					
						<span class="property-value" aria-labelledby="complaint_Type-label"><g:fieldValue bean="${complaintInstance}" field="complaint_Type"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${complaintInstance?.complaint}">
				<li class="fieldcontain">
					<span id="complaint-label" class="property-label">Complaint Details:</span>
					
					<center><span class="property-value" aria-labelledby="complaint-label"><g:fieldValue bean="${complaintInstance}" field="complaint"/></span></center>
					
				</li>
				</g:if>
				
				<g:if test="${complaintInstance?.response}">
				<li class="fieldcontain">
					<span id="response-label" class="property-label"><g:message code="complaint.response.label" default="Response" /></span>
					
						<g:each in="${complaintInstance.response}" var="s">
						<span class="property-value" aria-labelledby="response-label"><g:link controller="response" action="show" id="${s.id}">${s?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
				
			</b>
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${complaintInstance?.id}" />
					<g:actionSubmit class="edit" action="edit" value="${message(code: 'default.button.edit.label', default: 'Edit')}" />
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
		</div>
		</div>
		
	</body>
</html>
