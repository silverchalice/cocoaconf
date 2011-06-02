import java.text.SimpleDateFormat
import grails.util.GrailsUtil
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
            String ed = "2012/10/23"
            SimpleDateFormat formatter = new SimpleDateFormat("yyyy/MM/dd")
		
            if(GrailsUtil.environment == "development") {
                println "in dev mode"
                def venue =  new Venue(description:"This is the great venue that you should hold a conference at.", phone:"(123) 456-7890", website:"http://venue.com/", image:new File("/Users/zak/Pictures/zak11.png").readBytes(), address:"123 Main Street", city:"Madison", name:"The Great Venue", state:"WI", zip:"53901").save(failOnError:true)

                 //def venue =  new Venue(description:"This is the great venue that you should hold a conference at.", phone:"(123) 456-7890", website:"http://venue.com/", imagePath:"images/venue/the-great-venue/DSCN9493.JPG", address:"123 Main Street", city:"Madison", name:"The Great Venue", state:"WI", zip:"53901").save(failOnError:true)

                def conference = new Conference(startDate:formatter.parse(sd), endDate:formatter.parse(ed), venue: Venue.get(1), description:"This will be the great conference that you should go to.", city:"Madison", state:"WI", tinyName:"madison2012").save(failOnError:true)

                def speaker = new Speaker(firstName:"Hal", lastName:"Kipggey", email:"h@kipggey.com", bio:"I be Scottish.", imagePath:"images/speaker/hal-kipggey/pkp.jpg", blog:"http://blog.kipggey.com/", twitter:"hal_k").save(failOnError:true)

                def talk1 = new Presentation(speaker:Speaker.get(1), title:"Golden Halls", pAbstract:"This will be the great talk that you should go to.", codePath:"zip/presentation/code/code.zip", slidesPath:"zip/presentation/slide/slides.zip").save()

                def talk2 = new Presentation(speaker:Speaker.get(1), title:"Follow Me Up", pAbstract:"This will be the other great talk that you should go to.", codePath:"zip/presentation/code/code2.zip", slidesPath:"zip/presentation/slide/slides2.zip").save()

                def talk3 = new Presentation(speaker:Speaker.get(1), title:"A Place Of Springs", pAbstract:"This will be another great talk that you should go to.", codePath:"zip/presentation/code/code3.zip", slidesPath:"zip/presentation/slide/slides3.zip").save()

                def talk4 = new Presentation(speaker:Speaker.get(1), title:"County Down", pAbstract:"This will be yet another great talk that you should go to.", codePath:"zip/presentation/code/code4.zip", slidesPath:"zip/presentation/slide/slides4.zip").save()

                def session1 = new Session(conference:Conference.get(1), presentation:Presentation.get(1), startTime: formatter.parse(sd), endTime:formatter.parse(sd), room:"Inspiration", speaker:Speaker.get(1), track:"1").save(failOnError:true)

                def session2 = new Session(conference:Conference.get(1), presentation:Presentation.get(2), startTime: formatter.parse(sd), endTime:formatter.parse(sd), room:"Inspiration", speaker:Speaker.get(1), track:"2").save(failOnError:true)

                def session3 = new Session(conference:Conference.get(1), presentation:Presentation.get(3), startTime: formatter.parse(ed), endTime:formatter.parse(ed), room:"Inspiration", speaker:Speaker.get(1), track:"1").save(failOnError:true)

                def session4 = new Session(conference:Conference.get(1), presentation:Presentation.get(4), startTime: formatter.parse(ed), endTime:formatter.parse(ed), room:"Inspiration", speaker:Speaker.get(1), track:"2").save(failOnError:true)

            }

		}
    }
    def destroy = {
    }
}
