package uk.ac.shu.webarch.eregister

class _Class {

	String classId
	String courseCode
	String instructorId
	String regSheet

static hasMany = [classes: RegSheet]   
static hasMany = [classes: InstructorId]


    static constraints = {
    }
}
