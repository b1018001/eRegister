package uk.ac.shu.webarch.eregister

class Student {

	String studentId	
	String name
	String studentNumber
	String dateOfBirth
        Set classes
        Set attendances

static hasMany = [classes: Enrollment, attendances:RegClass]   
static mappedBy = [classes: 'student', attendances: 'student']


    static constraints = {
    }
}
