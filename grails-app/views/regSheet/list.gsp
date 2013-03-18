
<%@ page import="uk.ac.shu.webarch.eregister.RegSheet" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'regSheet.label', default: 'RegSheet')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-regSheet" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-regSheet" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="instructorId" title="${message(code: 'regSheet.instructorId.label', default: 'Instructor Id')}" />
					
						<g:sortableColumn property="instructorName" title="${message(code: 'regSheet.instructorName.label', default: 'Instructor Name')}" />
					
						<g:sortableColumn property="regSheetId" title="${message(code: 'regSheet.regSheetId.label', default: 'Reg Sheet Id')}" />
					
						<g:sortableColumn property="regSheetName" title="${message(code: 'regSheet.regSheetName.label', default: 'Reg Sheet Name')}" />
					
						<g:sortableColumn property="studentId" title="${message(code: 'regSheet.studentId.label', default: 'Student Id')}" />
					
						<g:sortableColumn property="studentName" title="${message(code: 'regSheet.studentName.label', default: 'Student Name')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${regSheetInstanceList}" status="i" var="regSheetInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${regSheetInstance.id}">${fieldValue(bean: regSheetInstance, field: "instructorId")}</g:link></td>
					
						<td>${fieldValue(bean: regSheetInstance, field: "instructorName")}</td>
					
						<td>${fieldValue(bean: regSheetInstance, field: "regSheetId")}</td>
					
						<td>${fieldValue(bean: regSheetInstance, field: "regSheetName")}</td>
					
						<td>${fieldValue(bean: regSheetInstance, field: "studentId")}</td>
					
						<td>${fieldValue(bean: regSheetInstance, field: "studentName")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${regSheetInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
