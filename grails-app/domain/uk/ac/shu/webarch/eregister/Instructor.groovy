package uk.ac.shu.webarch.eregister

class Instructor {

	String staffId
	String instructorName
	Integer instructorSalary
	String regClass
		
Set classes

static hasMany = [classes: RegClass]   
static mappedBy = [classes: 'class_instructor'] 


 static constraints = {
	instructorName(nullable:false, blank:false, maxsize:256);
	staffId(nullable:false, blank:false, maxsize:20)
    }
}
