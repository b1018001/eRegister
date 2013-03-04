<%@ page import="uk.ac.shu.webarch.eregister.Instructor" %>



<div class="fieldcontain ${hasErrors(bean: instructorInstance, field: 'name', 'error')} ">
	<label for="name">
		<g:message code="instructor.name.label" default="Name" />
		
	</label>
	<g:textField name="name" value="${instructorInstance?.name}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: instructorInstance, field: 'staffNumber', 'error')} ">
	<label for="staffNumber">
		<g:message code="instructor.staffNumber.label" default="Staff Number" />
		
	</label>
	<g:textField name="staffNumber" value="${instructorInstance?.staffNumber}"/>
</div>

