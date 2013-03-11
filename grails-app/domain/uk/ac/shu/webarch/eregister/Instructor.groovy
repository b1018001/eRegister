package uk.ac.shu.webarch.eregister

class Instructor {

	
	String staffId
	String name
	Integer salary
	String regclass
		
Set classes

static hasMany = [classes: RegClass]   


static mappedBy = [classes: 'class_instructor'] 


 static constraints = {
	name(nullable:false, blank:false, maxsize:256);
	staffId(nullable:false, blank:false, maxsize:20)
    }
}
