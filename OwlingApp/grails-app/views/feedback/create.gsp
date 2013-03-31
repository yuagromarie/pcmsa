<%@ page import="owlingapp.Feedback" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'feedback.label', default: 'Feedback')}" />
		<title><g:message code="default.create.label" args="[entityName]" /></title>
	</head>
	<body>
		<div class="main_content">
		<div class="main_content_top"></div>
			<div id="boxes_content">
			<center>
			<div id="create-feedback" class="content scaffold-create" role="main">
			<h1><g:message code="default.create.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<g:hasErrors bean="${feedbackInstance}">
			<ul class="errors" role="alert">
				<g:eachError bean="${feedbackInstance}" var="error">
				<li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
				</g:eachError>
			</ul>
			</g:hasErrors>
			<g:form action="save" >
				<fieldset class="form">
					<g:render template="form"/>
				</fieldset>
				<fieldset class="buttons">
					<g:submitButton name="create" class="save" value="Send" onclick="return confirm('${message(code: 'default.button.create.confirm.message', default: 'Ready to send?')}');" />
				</fieldset>
			</g:form>
		</div>
		</center>
		</div>
		</div>
	</body>
</html>
