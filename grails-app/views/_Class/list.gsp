
<%@ page import="uk.ac.shu.webarch.eregister._Class" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: '_Class.label', default: '_Class')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-_Class" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-_Class" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="classId" title="${message(code: '_Class.classId.label', default: 'Class Id')}" />
					
						<g:sortableColumn property="courseId" title="${message(code: '_Class.courseId.label', default: 'Course Id')}" />
					
						<g:sortableColumn property="instructorId" title="${message(code: '_Class.instructorId.label', default: 'Instructor Id')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${_ClassInstanceList}" status="i" var="_ClassInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${_ClassInstance.id}">${fieldValue(bean: _ClassInstance, field: "classId")}</g:link></td>
					
						<td>${fieldValue(bean: _ClassInstance, field: "courseId")}</td>
					
						<td>${fieldValue(bean: _ClassInstance, field: "instructorId")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${_ClassInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
