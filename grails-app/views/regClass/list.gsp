
<%@ page import="uk.ac.shu.webarch.eregister.RegClass" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'regClass.label', default: 'RegClass')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-regClass" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-regClass" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<th><g:message code="regClass.class_instructor.label" default="Classinstructor" /></th>
					
						<g:sortableColumn property="regClass" title="${message(code: 'regClass.regClass.label', default: 'Reg Class')}" />
					
						<g:sortableColumn property="regClassName" title="${message(code: 'regClass.regClassName.label', default: 'Reg Class Name')}" />
					
						<g:sortableColumn property="regSheet" title="${message(code: 'regClass.regSheet.label', default: 'Reg Sheet')}" />
					
						<th><g:message code="regClass.student.label" default="Student" /></th>
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${regClassInstanceList}" status="i" var="regClassInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${regClassInstance.id}">${fieldValue(bean: regClassInstance, field: "class_instructor")}</g:link></td>
					
						<td>${fieldValue(bean: regClassInstance, field: "regClass")}</td>
					
						<td>${fieldValue(bean: regClassInstance, field: "regClassName")}</td>
					
						<td>${fieldValue(bean: regClassInstance, field: "regSheet")}</td>
					
						<td>${fieldValue(bean: regClassInstance, field: "student")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${regClassInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
