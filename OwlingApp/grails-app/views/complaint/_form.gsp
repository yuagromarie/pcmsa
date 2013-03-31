<%@ page import="owlingapp.Complaint" %>


<div class="fieldcontain ${hasErrors(bean: complaintInstance, field: 'complaint_Type', 'error')} required">
	<label for="complaint_Type">
		<b><g:message code="complaint.complaint_Type.label" default="Priority Level:" /></b>
		
	</label>
	
	<g:select name="complaint_Type" from="${complaintInstance.constraints.complaint_Type.inList}" required="" value="${complaintInstance?.complaint_Type}" valueMessagePrefix="complaint.complaint_Type"/>
</div>
<b>Complaint details:</b>
<div class="fieldcontain ${hasErrors(bean: complaintInstance, field: 'complaint', 'error')} required">
	<g:textArea rows="10" cols="50" name="complaint" required="" value="${complaintInstance?.complaint}"/>
</div>

