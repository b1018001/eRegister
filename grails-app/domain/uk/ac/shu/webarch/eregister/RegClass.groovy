package uk.ac.shu.webarch.eregister

class RegClass {

	String regClass
	String regClassName
	Student student
	String regSheet
	
	
Set sheets

static hasMany = [sheets: RegSheet]   
static mappedBy = [sheets: 'regClass']

Instructor class_instructor
 
    static constraints = {
    }


static mapping = {
class_instructor column: 'instructor_fk'
course column:'course_fk'
}
}
