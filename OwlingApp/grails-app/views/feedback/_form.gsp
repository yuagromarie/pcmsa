<%@ page import="owlingapp.Feedback" %>


<h2>Response Details:</h2>
<div class="fieldcontain ${hasErrors(bean: feedbackInstance, field: 'response', 'error')} required">
	<g:select id="response" name="response.id" from="${owlingapp.Response.list()}" optionKey="id" required="" value="${feedbackInstance?.response?.id}" class="many-to-one"/>
</div>

<h2>Feedback Message:</h2>
<div class="fieldcontain ${hasErrors(bean: feedbackInstance, field: 'feedback', 'error')} required">
	<g:textArea rows="10" cols="50" name="feedback" required="" value="${feedbackInstance?.feedback}"/>
</div>

