
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
					
						<th><g:message code="regSheet.regClass.label" default="Reg Class" /></th>
					
						<g:sortableColumn property="regSheet" title="${message(code: 'regSheet.regSheet.label', default: 'Reg Sheet')}" />
					
						<g:sortableColumn property="regSheetName" title="${message(code: 'regSheet.regSheetName.label', default: 'Reg Sheet Name')}" />
					
						<th><g:message code="regSheet.student.label" default="Student" /></th>
					
						<th><g:message code="regSheet.theclass.label" default="Theclass" /></th>
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${regSheetInstanceList}" status="i" var="regSheetInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${regSheetInstance.id}">${fieldValue(bean: regSheetInstance, field: "regClass")}</g:link></td>
					
						<td>${fieldValue(bean: regSheetInstance, field: "regSheet")}</td>
					
						<td>${fieldValue(bean: regSheetInstance, field: "regSheetName")}</td>
					
						<td>${fieldValue(bean: regSheetInstance, field: "student")}</td>
					
						<td>${fieldValue(bean: regSheetInstance, field: "theclass")}</td>
					
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
