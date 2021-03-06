<%@ page import="uk.ac.shu.webarch.eregister.Course" %>



<div class="fieldcontain ${hasErrors(bean: courseInstance, field: 'courseCode', 'error')} ">
	<label for="courseCode">
		<g:message code="course.courseCode.label" default="Course Code" />
		
	</label>
	<g:textField name="courseCode" maxlength="20" value="${courseInstance?.courseCode}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: courseInstance, field: 'classes', 'error')} ">
	<label for="classes">
		<g:message code="course.classes.label" default="Classes" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${courseInstance?.classes?}" var="c">
    <li><g:link controller="theClass" action="show" id="${c.id}">${c?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="theClass" action="create" params="['course.id': courseInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'theClass.label', default: 'TheClass')])}</g:link>
</li>
</ul>

</div>

<div class="fieldcontain ${hasErrors(bean: courseInstance, field: 'courseDescription', 'error')} ">
	<label for="courseDescription">
		<g:message code="course.courseDescription.label" default="Course Description" />
		
	</label>
	<g:textField name="courseDescription" value="${courseInstance?.courseDescription}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: courseInstance, field: 'courseName', 'error')} ">
	<label for="courseName">
		<g:message code="course.courseName.label" default="Course Name" />
		
	</label>
	<g:textField name="courseName" value="${courseInstance?.courseName}"/>
</div>

