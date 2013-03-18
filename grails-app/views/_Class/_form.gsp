<%@ page import="uk.ac.shu.webarch.eregister._Class" %>



<div class="fieldcontain ${hasErrors(bean: _ClassInstance, field: 'classId', 'error')} ">
	<label for="classId">
		<g:message code="_Class.classId.label" default="Class Id" />
		
	</label>
	<g:textField name="classId" value="${_ClassInstance?.classId}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: _ClassInstance, field: 'courseId', 'error')} ">
	<label for="courseId">
		<g:message code="_Class.courseId.label" default="Course Id" />
		
	</label>
	<g:textField name="courseId" value="${_ClassInstance?.courseId}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: _ClassInstance, field: 'instructorId', 'error')} ">
	<label for="instructorId">
		<g:message code="_Class.instructorId.label" default="Instructor Id" />
		
	</label>
	<g:textField name="instructorId" value="${_ClassInstance?.instructorId}"/>
</div>

