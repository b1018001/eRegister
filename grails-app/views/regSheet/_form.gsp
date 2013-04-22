<%@ page import="uk.ac.shu.webarch.eregister.RegSheet" %>



<div class="fieldcontain ${hasErrors(bean: regSheetInstance, field: 'regClass', 'error')} required">
	<label for="regClass">
		<g:message code="regSheet.regClass.label" default="Reg Class" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="regClass" name="regClass.id" from="${uk.ac.shu.webarch.eregister.RegClass.list()}" optionKey="id" required="" value="${regSheetInstance?.regClass?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: regSheetInstance, field: 'regSheet', 'error')} ">
	<label for="regSheet">
		<g:message code="regSheet.regSheet.label" default="Reg Sheet" />
		
	</label>
	<g:textField name="regSheet" value="${regSheetInstance?.regSheet}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: regSheetInstance, field: 'regSheetName', 'error')} ">
	<label for="regSheetName">
		<g:message code="regSheet.regSheetName.label" default="Reg Sheet Name" />
		
	</label>
	<g:textField name="regSheetName" value="${regSheetInstance?.regSheetName}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: regSheetInstance, field: 'student', 'error')} required">
	<label for="student">
		<g:message code="regSheet.student.label" default="Student" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="student" name="student.id" from="${uk.ac.shu.webarch.eregister.Student.list()}" optionKey="id" required="" value="${regSheetInstance?.student?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: regSheetInstance, field: 'theclass', 'error')} required">
	<label for="theclass">
		<g:message code="regSheet.theclass.label" default="Theclass" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="theclass" name="theclass.id" from="${uk.ac.shu.webarch.eregister.TheClass.list()}" optionKey="id" required="" value="${regSheetInstance?.theclass?.id}" class="many-to-one"/>
</div>

