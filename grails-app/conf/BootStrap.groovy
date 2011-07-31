import java.text.SimpleDateFormat
import grails.util.GrailsUtil
import com.cocoaconf.*

class BootStrap {

    def springSecurityService

    def init = { servletContext ->
	    def userRole = Role.findByAuthority('ROLE_USER') ?: new Role(authority: 'ROLE_USER').save(failOnError: true)
		def adminRole = Role.findByAuthority('ROLE_ADMIN') ?: new Role(authority: 'ROLE_ADMIN').save(failOnError: true)
		def attendeeRole = Role.findByAuthority('ROLE_ATTENDEE') ?: new Role(authority: 'ROLE_ATTENDEE').save(failOnError: true)

        if(!User.findByUsername("admin")){

		    def admin = new User(username:"admin", password:springSecurityService.encodePassword("admin"), email: "admin@cocoaconf.com", firstName: "Admin", lastName: "Cocoaconf", street: "123 Main Street", city: "City", state: "ST", zip:"53901", enabled:true, accountExpired:false, accountLocked:false, passwordExpired:false).save(failOnError:true)
		    UserRole.create admin, adminRole

            def user = new User(username:"user", password:springSecurityService.encodePassword("user"), email: "admin@cocoaconf.com", firstName: "Admin", lastName: "Cocoaconf", street: "123 Main Street", city: "City", state: "ST", zip:"53901", enabled:true, accountExpired:false, accountLocked:false, passwordExpired:false).save(failOnError:true)
            UserRole.create user, attendeeRole


            String sd = "2011/08/12"
            String ed = "2011/08/13"
            SimpleDateFormat formatter = new SimpleDateFormat("yyyy/MM/dd")
		
            if(GrailsUtil.environment == "development") {
                println "in dev mode"
                def venue =  new Venue(description:"This is the great venue that you should hold a conference at.", phone:"(123) 456-7890", website:"http://venue.com/", image:new File("/Users/zak/builds/cocoaconf/web-app/images/venue/the-great-venue/DSCN9493.JPG").readBytes(), address:"123 Main Street", city:"Madison", name:"The Great Venue", state:"WI", zip:"53901").save(failOnError:true)

                 //def venue =  new Venue(description:"This is the great venue that you should hold a conference at.", phone:"(123) 456-7890", website:"http://venue.com/", imagePath:"images/venue/the-great-venue/DSCN9493.JPG", address:"123 Main Street", city:"Madison", name:"The Great Venue", state:"WI", zip:"53901").save(failOnError:true)

                def conference = new Conference(startDate:formatter.parse(sd), endDate:formatter.parse(ed), venue: Venue.get(1), description:"This will be the great conference that you should go to.", city:"Columbus", state:"OH", tinyName:"columbus0811").save(failOnError:true)

                def speaker1 = new Speaker(firstName:"Daniel", lastName:"Steinberg", email:"change@this.com", bio:"Daniel Steinberg has spent the last three decades programming the iPad, iPhone, and Mac OS X. OK, he hasn't. But he's been programming the iPhone and the iPad since the SDK's first appeared in beta and Mac OS X for many years before. Daniel is co-author of the book \"iPad Programming\" from the Pragmatic Programmers and author of their book \"Cocoa Programming.\" Daniel presents iPhone and Cocoa training for the Pragmatic Studio and consults through his company Dim Sum Thinking. When he's not coding or talking about coding for the Mac, the iPhone, and the iPad he's probably cooking or hanging out with his wife and daughter.", imagePath:"images/speaker/daniel-steinberg/ds.png", blog:"http://dimsumthinking.com/", twitter:"dimsumthinking").save(failOnError:true)

                def speaker2 = new Speaker(firstName:"Chris", lastName:"Adamson", email:"change@this.com", bio:"Chris Adamson is an independent writer, editor, and developer, living in Grand Rapids, Michigan. Now focusing on iPhone and Mac development, he is the co-author of iPhone SDK Development. He is also the author of �QuickTime for Java: A Developer�s Notebook� (O�Reilly) and co-author of �Swing Hacks� (O�Reilly) and has served as Editor for the developer websites ONJava and java.net. He maintains a corporate identity as Subsequently & Furthermore, Inc. (http://www.subfurther.com/) and writes the [Time code]; blog at http://www.subfurther.com/blog .  In a previous career, he was a Writer / Associate Producer at CNN Headline News, and over the years, he has managed to own eleven and a half Macs.", imagePath:"images/speaker/chris-adamson/ca.jpg", blog:"http://www.subfurther.com/", twitter:"invalidname").save(failOnError:true)

                def speaker3 = new Speaker(firstName:"Chris", lastName:"Judd", email:"change@this.com", bio:"Christopher M. Judd is the president and primary consultant for Judd Solutions (http://www.juddsolutions.com), an international speaker, an open source evangelist, the Central Ohio Java Users Group (http://www.cojug.org) and Columbus iPhone Developer User Group leader, and the co-author of Beginning Groovy and Grails (Apress, 2008), Enterprise Java Development on a Budget (Apress, 2003) and Pro Eclipse JST (Apress, 2005) as well as the author of the children�s book �Bearable Moments�. He has spent 13 years architecting and developing software for Fortune 500 companies in various industries, including insurance, retail, government, manufacturing, service, and transportation. His current focus is on consulting, mentoring, and training with Java, Java EE, Groovy, Grails, Cloud Computing and mobile platforms like iPhone, Android and Java ME.", imagePath:"images/speaker/chris-judd/cj.jpg", blog:"http://www.juddsolutions.com/", twitter:"javajudd").save(failOnError:true)

                def talk1 = new Presentation(speaker:Speaker.findByLastName("Steinberg"), title:"Your Code - the Director's Cut (Keynote)", pAbstract:"When you build your application it's like a director on a movie set yelling \"Action\". There are all sorts of objects appearing on screen, there is dialog, and there is plenty of action. Your source code is like the shooting script for an action packed movie. From simple method calls to delegation, you are trying to get the most out of your objects. We'll take a brief look at everything from object creation to MVC from the vantage point of the director.", codePath:"zip/presentation/code/code.zip", slidesPath:"zip/presentation/slide/slides.zip").save()

                def talk2 = new Presentation(speaker:Speaker.findByLastName("Steinberg"), title:"Blocks", pAbstract:"Blocks is a relatively new language feature that will change the way you code. They were made available for iPhone programming with iOS 4 a little more than a year ago and were added to the iPad with the release of iOS 4.2 Mac OS X developers had an extra year to embrace blocks. In this session, we'll look at why you want to use blocks and when you will most often use them. We'll examine the syntax of blocks but we won't dig deep in to the subtleties.", codePath:"zip/presentation/code/code2.zip", slidesPath:"zip/presentation/slide/slides2.zip").save()

                def talk3 = new Presentation(speaker:Speaker.findByLastName("Steinberg"), title:"Mac OS X for iOS developers", pAbstract:"Just a few years ago, Mac OS X developers were making the transition to coding for the iPhone. But then the flood gates opened and people flocked to the platform just to program the iPhone and iPad. Now it's time for them to consider making the transition to Mac OS X. In this sessions we'll look at what's different about writing code for the desktop. Some of the conventions are different and some of the technologies available are different. This session will smooth your way from producing apps for the App Store to creating desktop apps for the Mac App Store.", codePath:"zip/presentation/code/code3.zip", slidesPath:"zip/presentation/slide/slides3.zip").save()

                def talk4 = new Presentation(speaker:Speaker.findByLastName("Adamson"), title:"Introduction to AV Foundation", pAbstract:"AV Foundation, introduced in iOS 4, offers broad and deep media functionality to third-party apps.  Working from a \"media document\" model, it provides APIs for audio and video capture, editing, playback, and export.  Developed in parallel with the iOS version of iMovie (which it powers), AV Foundation is a sensible first choice for most media needs on iOS, and is so compelling that it is being added to Mac OS X in Lion.  In this session, we'll survey the kinds of features AV Foundation provides (and note the cases where you'd want to use something else, like Core Audio), and then dig into the basics of its capture, playback, and editing features.", codePath:"zip/presentation/code/code.zip", slidesPath:"zip/presentation/slide/slides.zip").save()

                def talk5 = new Presentation(speaker:Speaker.findByLastName("Adamson"), title:"Advanced AV Foundation", pAbstract:"The iOS version of iMovie uses the AV Foundation framework, and indications are that Final Cut Pro X will be using the Mac OS X version of AVF.  And if AV Foundation is powerful enough to provide the core functionality of Final Cut, it must have some great stuff going on, right?  In this session, we'll dig into the more powerful (and more challenging) APIs in AV Foundation, including reading and writing raw samples, performing live processing of incoming data at capture time, and advanced editing features like mixing audio and video tracks and adding Core Animation-based titles.", codePath:"zip/presentation/code/code2.zip", slidesPath:"zip/presentation/slide/slides2.zip").save()

                def talk6 = new Presentation(speaker:Speaker.findByLastName("Judd"), title:"Beginning iOS Development", pAbstract:"So you have a great idea for a mobile application. You want to target iPhones, iPod Touchs and/or iPads but you don't know how to get started. Well this session will walk you though the fast evolving landscape of tools, coding and processes you need to know to get you started developing applications for the iOS platform.", codePath:"zip/presentation/code/code3.zip", slidesPath:"zip/presentation/slide/slides3.zip").save()

                def talk7 = new Presentation(speaker:Speaker.findByLastName("Judd"), title:"Unit and Functional Testing for the iOS platform", pAbstract:"You know unit and functional testing is important, but as an iOS developer you are probably not doing it. There are a lot of reasons why not: poor documentation, difficult to get started or maybe you didn't even know it was possible. This presentation won't bore you with why you should test. Instead it will focus on practical tips and frameworks for getting you started in building better more reliable applications for the iPhone, iPod Touch and/or iPad.", codePath:"zip/presentation/code/code3.zip", slidesPath:"zip/presentation/slide/slides3.zip").save()

                def session1 = new Session(conference:Conference.get(1), presentation:Presentation.get(1), startTime: formatter.parse(sd), endTime:formatter.parse(sd), room:"TBD", speaker:Speaker.get(Presentation.get(1).speaker.id), track:"1").save(failOnError:true)

                def session2 = new Session(conference:Conference.get(1), presentation:Presentation.get(2), startTime: formatter.parse(sd), endTime:formatter.parse(sd), room:"TBD", speaker:Speaker.get(Presentation.get(2).speaker.id), track:"2").save(failOnError:true)

                def session3 = new Session(conference:Conference.get(1), presentation:Presentation.get(3), startTime: formatter.parse(ed), endTime:formatter.parse(ed), room:"TBD", speaker:Speaker.get(Presentation.get(3).speaker.id), track:"1").save(failOnError:true)

                def session4 = new Session(conference:Conference.get(1), presentation:Presentation.get(4), startTime: formatter.parse(ed), endTime:formatter.parse(ed), room:"TBD", speaker:Speaker.get(Presentation.get(4).speaker.id), track:"2").save(failOnError:true)

                def session5 = new Session(conference:Conference.get(1), presentation:Presentation.get(5), startTime: formatter.parse(sd), endTime:formatter.parse(sd), room:"TBD", speaker:Speaker.get(Presentation.get(5).speaker.id), track:"1").save(failOnError:true)

                def session6 = new Session(conference:Conference.get(1), presentation:Presentation.get(6), startTime: formatter.parse(sd), endTime:formatter.parse(sd), room:"TBD", speaker:Speaker.get(Presentation.get(6).speaker.id), track:"2").save(failOnError:true)

                def session7 = new Session(conference:Conference.get(1), presentation:Presentation.get(7), startTime: formatter.parse(ed), endTime:formatter.parse(ed), room:"TBD", speaker:Speaker.get(Presentation.get(7).speaker.id), track:"1").save(failOnError:true)

//Come in and know me better. Man!

            }

        }
    }
    def destroy = {
    }
}
