
<%@ page import="uk.ac.shu.webarch.eregister.RegSheet" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'regSheet.label', default: 'RegSheet')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-regSheet" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-regSheet" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list regSheet">
			
				<g:if test="${regSheetInstance?.instructorId}">
				<li class="fieldcontain">
					<span id="instructorId-label" class="property-label"><g:message code="regSheet.instructorId.label" default="Instructor Id" /></span>
					
						<span class="property-value" aria-labelledby="instructorId-label"><g:fieldValue bean="${regSheetInstance}" field="instructorId"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${regSheetInstance?.instructorName}">
				<li class="fieldcontain">
					<span id="instructorName-label" class="property-label"><g:message code="regSheet.instructorName.label" default="Instructor Name" /></span>
					
						<span class="property-value" aria-labelledby="instructorName-label"><g:fieldValue bean="${regSheetInstance}" field="instructorName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${regSheetInstance?.regSheetId}">
				<li class="fieldcontain">
					<span id="regSheetId-label" class="property-label"><g:message code="regSheet.regSheetId.label" default="Reg Sheet Id" /></span>
					
						<span class="property-value" aria-labelledby="regSheetId-label"><g:fieldValue bean="${regSheetInstance}" field="regSheetId"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${regSheetInstance?.regSheetName}">
				<li class="fieldcontain">
					<span id="regSheetName-label" class="property-label"><g:message code="regSheet.regSheetName.label" default="Reg Sheet Name" /></span>
					
						<span class="property-value" aria-labelledby="regSheetName-label"><g:fieldValue bean="${regSheetInstance}" field="regSheetName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${regSheetInstance?.studentId}">
				<li class="fieldcontain">
					<span id="studentId-label" class="property-label"><g:message code="regSheet.studentId.label" default="Student Id" /></span>
					
						<span class="property-value" aria-labelledby="studentId-label"><g:fieldValue bean="${regSheetInstance}" field="studentId"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${regSheetInstance?.studentName}">
				<li class="fieldcontain">
					<span id="studentName-label" class="property-label"><g:message code="regSheet.studentName.label" default="Student Name" /></span>
					
						<span class="property-value" aria-labelledby="studentName-label"><g:fieldValue bean="${regSheetInstance}" field="studentName"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${regSheetInstance?.id}" />
					<g:link class="edit" action="edit" id="${regSheetInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
