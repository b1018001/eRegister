
<%@ page import="uk.ac.shu.webarch.eregister._Class" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: '_Class.label', default: '_Class')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-_Class" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-_Class" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list _Class">
			
				<g:if test="${_ClassInstance?.classId}">
				<li class="fieldcontain">
					<span id="classId-label" class="property-label"><g:message code="_Class.classId.label" default="Class Id" /></span>
					
						<span class="property-value" aria-labelledby="classId-label"><g:fieldValue bean="${_ClassInstance}" field="classId"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${_ClassInstance?.courseId}">
				<li class="fieldcontain">
					<span id="courseId-label" class="property-label"><g:message code="_Class.courseId.label" default="Course Id" /></span>
					
						<span class="property-value" aria-labelledby="courseId-label"><g:fieldValue bean="${_ClassInstance}" field="courseId"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${_ClassInstance?.instructorId}">
				<li class="fieldcontain">
					<span id="instructorId-label" class="property-label"><g:message code="_Class.instructorId.label" default="Instructor Id" /></span>
					
						<span class="property-value" aria-labelledby="instructorId-label"><g:fieldValue bean="${_ClassInstance}" field="instructorId"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${_ClassInstance?.id}" />
					<g:link class="edit" action="edit" id="${_ClassInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
