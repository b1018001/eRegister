import uk.ac.shu.webarch.eregister.*;

class BootStrap {

    def init = { servletContext ->

	println("BootStrap::init");
	
	def Zak_instructor = Instructor.findByStaffId('646345d') ?: new Instructor(staffId:'646345d', name:'Zak 		Name').save();

	def web_arch_course = Course.findByCourseCode('646345a') ?: new Course(CourseCode:'646345a',
									courseName:'Web Architechtures',
									courseDescription: 'A module teaching about  webarchitechtures').save();
	
	def info_systems_course = Course.findByCourseCode('646345c') ?: new Course(CourseCode:'646345c',
									courseName:'Information Systems',
									courseDescription: 'A module teaching about data modelling').save();



 


    }
    def destroy = {
    }
}
