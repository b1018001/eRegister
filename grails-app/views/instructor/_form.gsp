<%@ page import="uk.ac.shu.webarch.eregister.Instructor" %>



<div class="fieldcontain ${hasErrors(bean: instructorInstance, field: 'instructorName', 'error')} required">
	<label for="instructorName">
		<g:message code="instructor.instructorName.label" default="Instructor Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="instructorName" required="" value="${instructorInstance?.instructorName}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: instructorInstance, field: 'staffId', 'error')} required">
	<label for="staffId">
		<g:message code="instructor.staffId.label" default="Staff Id" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="staffId" required="" value="${instructorInstance?.staffId}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: instructorInstance, field: 'classes', 'error')} ">
	<label for="classes">
		<g:message code="instructor.classes.label" default="Classes" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${instructorInstance?.classes?}" var="c">
    <li><g:link controller="regClass" action="show" id="${c.id}">${c?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="regClass" action="create" params="['instructor.id': instructorInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'regClass.label', default: 'RegClass')])}</g:link>
</li>
</ul>

</div>

<div class="fieldcontain ${hasErrors(bean: instructorInstance, field: 'instructorSalary', 'error')} required">
	<label for="instructorSalary">
		<g:message code="instructor.instructorSalary.label" default="Instructor Salary" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="instructorSalary" type="number" value="${instructorInstance.instructorSalary}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: instructorInstance, field: 'regClass', 'error')} ">
	<label for="regClass">
		<g:message code="instructor.regClass.label" default="Reg Class" />
		
	</label>
	<g:textField name="regClass" value="${instructorInstance?.regClass}"/>
</div>

