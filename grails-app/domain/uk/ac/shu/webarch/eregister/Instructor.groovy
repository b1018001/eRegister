package uk.ac.shu.webarch.eregister

class Instructor {

	String name
		String staffNumber
		Set classes

static hasMany = [classes: RegClass]   


static mappedBy = [classes: 'class_instructor'] 


 static constraints = {
	name(nullable:false, blank:false, maxsize:256);
	staffNumber(nullable:false, blank:false, maxsize:20)
    }
}
