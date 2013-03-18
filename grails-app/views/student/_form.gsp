<%@ page import="uk.ac.shu.webarch.eregister.Student" %>



<div class="fieldcontain ${hasErrors(bean: studentInstance, field: 'dateOfBirth', 'error')} ">
	<label for="dateOfBirth">
		<g:message code="student.dateOfBirth.label" default="Date Of Birth" />
		
	</label>
	<g:textField name="dateOfBirth" value="${studentInstance?.dateOfBirth}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: studentInstance, field: 'name', 'error')} ">
	<label for="name">
		<g:message code="student.name.label" default="Name" />
		
	</label>
	<g:textField name="name" value="${studentInstance?.name}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: studentInstance, field: 'studentId', 'error')} ">
	<label for="studentId">
		<g:message code="student.studentId.label" default="Student Id" />
		
	</label>
	<g:textField name="studentId" value="${studentInstance?.studentId}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: studentInstance, field: 'studentNumber', 'error')} ">
	<label for="studentNumber">
		<g:message code="student.studentNumber.label" default="Student Number" />
		
	</label>
	<g:textField name="studentNumber" value="${studentInstance?.studentNumber}"/>
</div>

