<%@ page import="uk.ac.shu.webarch.eregister.Student" %>



<div class="fieldcontain ${hasErrors(bean: studentInstance, field: 'attendances', 'error')} ">
	<label for="attendances">
		<g:message code="student.attendances.label" default="Attendances" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${studentInstance?.attendances?}" var="a">
    <li><g:link controller="regClass" action="show" id="${a.id}">${a?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="regClass" action="create" params="['student.id': studentInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'regClass.label', default: 'RegClass')])}</g:link>
</li>
</ul>

</div>

<div class="fieldcontain ${hasErrors(bean: studentInstance, field: 'classes', 'error')} ">
	<label for="classes">
		<g:message code="student.classes.label" default="Classes" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${studentInstance?.classes?}" var="c">
    <li><g:link controller="enrollment" action="show" id="${c.id}">${c?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="enrollment" action="create" params="['student.id': studentInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'enrollment.label', default: 'Enrollment')])}</g:link>
</li>
</ul>

</div>

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

