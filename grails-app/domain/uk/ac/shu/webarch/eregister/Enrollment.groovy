package uk.ac.shu.webarch.eregister

class Enrollment {

	String enrollmentId
	String studentId
	String regClass

Set classes

static hasMany = [classes: RegClass]   
static hasMany = [classes: StudentId]



    static constraints = {
    }
}
