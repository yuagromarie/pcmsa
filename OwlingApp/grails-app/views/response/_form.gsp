<%@ page import="pcsoftapp.Response" %>

<h2>Complaint Details:</h2>
<div class="fieldcontain ${hasErrors(bean: responseInstance, field: 'complaint', 'error')} required">

	<g:select id="complaint" name="complaint.id" from="${pcsoftapp.Complaint.list()}" optionKey="id" required="" value="${responseInstance?.complaint?.id}" class="many-to-one"/>
</div>
</br>
<h2>Response Message:</h2>
<div class="fieldcontain ${hasErrors(bean: responseInstance, field: 'response', 'error')} required">
	
	<g:textArea rows="10" cols="50" name="response" required="" value="${responseInstance?.response}"/>
</div>



