
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
			
				<g:if test="${regSheetInstance?.regClass}">
				<li class="fieldcontain">
					<span id="regClass-label" class="property-label"><g:message code="regSheet.regClass.label" default="Reg Class" /></span>
					
						<span class="property-value" aria-labelledby="regClass-label"><g:link controller="regClass" action="show" id="${regSheetInstance?.regClass?.id}">${regSheetInstance?.regClass?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${regSheetInstance?.regSheet}">
				<li class="fieldcontain">
					<span id="regSheet-label" class="property-label"><g:message code="regSheet.regSheet.label" default="Reg Sheet" /></span>
					
						<span class="property-value" aria-labelledby="regSheet-label"><g:fieldValue bean="${regSheetInstance}" field="regSheet"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${regSheetInstance?.regSheetName}">
				<li class="fieldcontain">
					<span id="regSheetName-label" class="property-label"><g:message code="regSheet.regSheetName.label" default="Reg Sheet Name" /></span>
					
						<span class="property-value" aria-labelledby="regSheetName-label"><g:fieldValue bean="${regSheetInstance}" field="regSheetName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${regSheetInstance?.student}">
				<li class="fieldcontain">
					<span id="student-label" class="property-label"><g:message code="regSheet.student.label" default="Student" /></span>
					
						<span class="property-value" aria-labelledby="student-label"><g:link controller="student" action="show" id="${regSheetInstance?.student?.id}">${regSheetInstance?.student?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${regSheetInstance?.theclass}">
				<li class="fieldcontain">
					<span id="theclass-label" class="property-label"><g:message code="regSheet.theclass.label" default="Theclass" /></span>
					
						<span class="property-value" aria-labelledby="theclass-label"><g:link controller="theClass" action="show" id="${regSheetInstance?.theclass?.id}">${regSheetInstance?.theclass?.encodeAsHTML()}</g:link></span>
					
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
