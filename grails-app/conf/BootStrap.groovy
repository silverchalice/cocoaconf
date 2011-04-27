import java.text.SimpleDateFormat
import com.cocoaconf.*

class BootStrap {

    def springSecurityService

    def init = { servletContext ->
	    def userRole = Role.findByAuthority('ROLE_USER') ?: new Role(authority: 'ROLE_USER').save(failOnError: true)
		def adminRole = Role.findByAuthority('ROLE_ADMIN') ?: new Role(authority: 'ROLE_ADMIN').save(failOnError: true)
	    if(!User.findByUsername("admin")){

		    def admin = new User(username:"admin", password:springSecurityService.encodePassword("admin"), email: "admin@cocoaconf.com", firstName: "Admin", lastName: "Cocoaconf", street: "123 Main Street", city: "City", state: "ST", zip:"53901", enabled:true, accountExpired:false, accountLocked:false, passwordExpired:false).save(failOnError:true)
		    UserRole.create admin, adminRole
		
            String sd = "2012/10/20"
            String ed = "2012/10/22"
            SimpleDateFormat formatter = new SimpleDateFormat("yyyy/MM/dd");
		
		    def venue =  new Venue(description:"This is the great venue that you should hold a conference at.", phone:"(123) 456-7890", website:"http://venue.com/", imagePath:"images/venue/the-great-venue/DSCN9493.JPG", address:"123 Main Street", city:"Madison", name:"The Great Venue", state:"WI", zip:"53901").save(failOnError:true)
		
		    def conference = new Conference(startDate:formatter.parse(sd), endDate:formatter.parse(ed), venue: Venue.get(1), description:"This will be the great conference that you should go to.", city:"Madison", state:"WI", tinyName:"madison2012").save(failOnError:true)
		
		    def speaker = new Speaker(firstName:"Hal", lastName:"Kipggey", email:"h@kipggey.com", bio:"I be Scottish.", imagePath:"images/speaker/hk.JPG", blog:"http://blog.kipggey.com/", twitter:"hal_k").save(failOnError:true)
		
		    def talk1 = new Presentation(speaker:Speaker.get(1), title:"Golden Halls", pAbstract:"This will be the great talk that you should go to.", codePath:"zip/presentation/code/code.zip", slidesPath:"zip/presentation/slide/slides.zip").save()
		
   		    def talk2 = new Presentation(speaker:Speaker.get(1), title:"Follow Me Up", pAbstract:"This will be the other great talk that you should go to.", codePath:"zip/presentation/code/code2.zip", slidesPath:"zip/presentation/slide/slides2.zip").save()
		
		}
    }
    def destroy = {
    }
}
