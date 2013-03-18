<%@ page import="uk.ac.shu.webarch.eregister.Course" %>



<div class="fieldcontain ${hasErrors(bean: courseInstance, field: 'courseDescription', 'error')} ">
	<label for="courseDescription">
		<g:message code="course.courseDescription.label" default="Course Description" />
		
	</label>
	<g:textField name="courseDescription" value="${courseInstance?.courseDescription}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: courseInstance, field: 'courseId', 'error')} ">
	<label for="courseId">
		<g:message code="course.courseId.label" default="Course Id" />
		
	</label>
	<g:textField name="courseId" value="${courseInstance?.courseId}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: courseInstance, field: 'courseName', 'error')} ">
	<label for="courseName">
		<g:message code="course.courseName.label" default="Course Name" />
		
	</label>
	<g:textField name="courseName" value="${courseInstance?.courseName}"/>
</div>

