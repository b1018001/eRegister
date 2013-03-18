<%@ page import="uk.ac.shu.webarch.eregister.RegSheet" %>



<div class="fieldcontain ${hasErrors(bean: regSheetInstance, field: 'instructorId', 'error')} ">
	<label for="instructorId">
		<g:message code="regSheet.instructorId.label" default="Instructor Id" />
		
	</label>
	<g:textField name="instructorId" value="${regSheetInstance?.instructorId}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: regSheetInstance, field: 'instructorName', 'error')} ">
	<label for="instructorName">
		<g:message code="regSheet.instructorName.label" default="Instructor Name" />
		
	</label>
	<g:textField name="instructorName" value="${regSheetInstance?.instructorName}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: regSheetInstance, field: 'regSheetId', 'error')} ">
	<label for="regSheetId">
		<g:message code="regSheet.regSheetId.label" default="Reg Sheet Id" />
		
	</label>
	<g:textField name="regSheetId" value="${regSheetInstance?.regSheetId}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: regSheetInstance, field: 'regSheetName', 'error')} ">
	<label for="regSheetName">
		<g:message code="regSheet.regSheetName.label" default="Reg Sheet Name" />
		
	</label>
	<g:textField name="regSheetName" value="${regSheetInstance?.regSheetName}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: regSheetInstance, field: 'studentId', 'error')} ">
	<label for="studentId">
		<g:message code="regSheet.studentId.label" default="Student Id" />
		
	</label>
	<g:textField name="studentId" value="${regSheetInstance?.studentId}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: regSheetInstance, field: 'studentName', 'error')} ">
	<label for="studentName">
		<g:message code="regSheet.studentName.label" default="Student Name" />
		
	</label>
	<g:textField name="studentName" value="${regSheetInstance?.studentName}"/>
</div>

