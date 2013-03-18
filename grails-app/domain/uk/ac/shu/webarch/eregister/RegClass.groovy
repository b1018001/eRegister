package uk.ac.shu.webarch.eregister

class RegClass {

	String regClass
	String regClassName
	String studentId
	String regSheet
	Set classes

static hasMany = [classes: RegSheet]   
static mappedBy = [classes: 'regSheet']

Instructor class_instructor
 
    static constraints = {
    }
}
