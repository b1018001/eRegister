<%@ page import="uk.ac.shu.webarch.eregister.RegClass" %>



<div class="fieldcontain ${hasErrors(bean: regClassInstance, field: 'class_instructor', 'error')} required">
	<label for="class_instructor">
		<g:message code="regClass.class_instructor.label" default="Classinstructor" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="class_instructor" name="class_instructor.id" from="${uk.ac.shu.webarch.eregister.Instructor.list()}" optionKey="id" required="" value="${regClassInstance?.class_instructor?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: regClassInstance, field: 'regClassName', 'error')} ">
	<label for="regClassName">
		<g:message code="regClass.regClassName.label" default="Reg Class Name" />
		
	</label>
	<g:textField name="regClassName" value="${regClassInstance?.regClassName}"/>
</div>

