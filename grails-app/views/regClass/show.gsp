
<%@ page import="uk.ac.shu.webarch.eregister.RegClass" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'regClass.label', default: 'RegClass')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-regClass" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-regClass" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list regClass">
			
				<g:if test="${regClassInstance?.class_instructor}">
				<li class="fieldcontain">
					<span id="class_instructor-label" class="property-label"><g:message code="regClass.class_instructor.label" default="Classinstructor" /></span>
					
						<span class="property-value" aria-labelledby="class_instructor-label"><g:link controller="instructor" action="show" id="${regClassInstance?.class_instructor?.id}">${regClassInstance?.class_instructor?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${regClassInstance?.regClass}">
				<li class="fieldcontain">
					<span id="regClass-label" class="property-label"><g:message code="regClass.regClass.label" default="Reg Class" /></span>
					
						<span class="property-value" aria-labelledby="regClass-label"><g:fieldValue bean="${regClassInstance}" field="regClass"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${regClassInstance?.regClassName}">
				<li class="fieldcontain">
					<span id="regClassName-label" class="property-label"><g:message code="regClass.regClassName.label" default="Reg Class Name" /></span>
					
						<span class="property-value" aria-labelledby="regClassName-label"><g:fieldValue bean="${regClassInstance}" field="regClassName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${regClassInstance?.regSheet}">
				<li class="fieldcontain">
					<span id="regSheet-label" class="property-label"><g:message code="regClass.regSheet.label" default="Reg Sheet" /></span>
					
						<span class="property-value" aria-labelledby="regSheet-label"><g:fieldValue bean="${regClassInstance}" field="regSheet"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${regClassInstance?.sheets}">
				<li class="fieldcontain">
					<span id="sheets-label" class="property-label"><g:message code="regClass.sheets.label" default="Sheets" /></span>
					
						<g:each in="${regClassInstance.sheets}" var="s">
						<span class="property-value" aria-labelledby="sheets-label"><g:link controller="regSheet" action="show" id="${s.id}">${s?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${regClassInstance?.student}">
				<li class="fieldcontain">
					<span id="student-label" class="property-label"><g:message code="regClass.student.label" default="Student" /></span>
					
						<span class="property-value" aria-labelledby="student-label"><g:link controller="student" action="show" id="${regClassInstance?.student?.id}">${regClassInstance?.student?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${regClassInstance?.id}" />
					<g:link class="edit" action="edit" id="${regClassInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
