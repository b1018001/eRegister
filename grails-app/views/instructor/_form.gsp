<%@ page import="uk.ac.shu.webarch.eregister.Instructor" %>



<div class="fieldcontain ${hasErrors(bean: instructorInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="instructor.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" required="" value="${instructorInstance?.name}"/>
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

<div class="fieldcontain ${hasErrors(bean: instructorInstance, field: 'regclass', 'error')} ">
	<label for="regclass">
		<g:message code="instructor.regclass.label" default="Regclass" />
		
	</label>
	<g:textField name="regclass" value="${instructorInstance?.regclass}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: instructorInstance, field: 'salary', 'error')} required">
	<label for="salary">
		<g:message code="instructor.salary.label" default="Salary" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="salary" type="number" value="${instructorInstance.salary}" required=""/>
</div>

