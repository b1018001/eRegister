<%@ page import="uk.ac.shu.webarch.eregister.RegClass" %>



<div class="fieldcontain ${hasErrors(bean: regClassInstance, field: 'class_instructor', 'error')} required">
	<label for="class_instructor">
		<g:message code="regClass.class_instructor.label" default="Classinstructor" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="class_instructor" name="class_instructor.id" from="${uk.ac.shu.webarch.eregister.Instructor.list()}" optionKey="id" required="" value="${regClassInstance?.class_instructor?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: regClassInstance, field: 'regClass', 'error')} ">
	<label for="regClass">
		<g:message code="regClass.regClass.label" default="Reg Class" />
		
	</label>
	<g:textField name="regClass" value="${regClassInstance?.regClass}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: regClassInstance, field: 'regClassName', 'error')} ">
	<label for="regClassName">
		<g:message code="regClass.regClassName.label" default="Reg Class Name" />
		
	</label>
	<g:textField name="regClassName" value="${regClassInstance?.regClassName}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: regClassInstance, field: 'regSheet', 'error')} ">
	<label for="regSheet">
		<g:message code="regClass.regSheet.label" default="Reg Sheet" />
		
	</label>
	<g:textField name="regSheet" value="${regClassInstance?.regSheet}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: regClassInstance, field: 'sheets', 'error')} ">
	<label for="sheets">
		<g:message code="regClass.sheets.label" default="Sheets" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${regClassInstance?.sheets?}" var="s">
    <li><g:link controller="regSheet" action="show" id="${s.id}">${s?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="regSheet" action="create" params="['regClass.id': regClassInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'regSheet.label', default: 'RegSheet')])}</g:link>
</li>
</ul>

</div>

<div class="fieldcontain ${hasErrors(bean: regClassInstance, field: 'student', 'error')} required">
	<label for="student">
		<g:message code="regClass.student.label" default="Student" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="student" name="student.id" from="${uk.ac.shu.webarch.eregister.Student.list()}" optionKey="id" required="" value="${regClassInstance?.student?.id}" class="many-to-one"/>
</div>

