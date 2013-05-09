package uk.ac.shu.webarch.eregister

class Course {
	
	String courseCode
	String courseName	
	String courseDescription
	



    static constraints = {
	courseCode maxSize: 20
    }
static hasMany = [classes: RegClass]
static mappedBy = [classes: 'course']

static mapping = {
courseCode column: 'course_name'
courseName column: 'mapped_course_code'
courseDescription column: 'course_desc', type:'text'

}
}
