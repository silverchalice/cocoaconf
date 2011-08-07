package com.cocoaconf

import org.springframework.security.core.context.SecurityContextHolder as SCH

class UserController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def springSecurityService

    def index = {
        redirect(action: "list", params: params)
    }

    def list = {
        params.max = Math.min(params.max ? params.int('max') : 10, 100)
        [userInstanceList: User.list(params), userInstanceTotal: User.count()]
    }

    def create = {
        def userInstance = new User()
        userInstance.properties = params
        return [userInstance: userInstance]
    }

	def pickSessions = {
		def user = User.findByUsername(springSecurityService.principal.username)
		if (!user.choice){
		    user.choice = new SessionChoice(params)
		}
		else{
			user.choice.properties = params
		}
		if (!user.save()){
			user.errors.allErrors.each{println it}
		}
		flash.message = "Thank you for your help!"
		redirect(controller:'home', action:'schedule')
	}
	
	def importUsers = {
		if (User.findByUsername('daveklein@usa.net')){
			render "Import already run."
			return
		}
		def file = ["50730695    Jun 03, 2011    Klein           Dave        daveklein@usa.net                       1.0 Super Early Bird        Aug 12, 2011    39572135    PayPal Completed    250.0           7.24            Attending       61 Harneywold Drive                                             Saint Louis         MO          63136       US",                                                                            
		"52095685    Jun 14, 2011    McCune          Sean        sean.mccune@gmail.com                   1.0 Super Early Bird        Aug 12, 2011    40652697    PayPal Completed    250.0           7.24            Attending       2709 Pearl Street                                               Natrona Heights     PA          15065       US",                                                                            
		"52095943    Jun 14, 2011    Mottl           William     billmottl@me.com                        1.0 Super Early Bird        Aug 12, 2011    40652889    PayPal Completed    200.0           5.99            Attending                                                                       Vermilion           OH          44089       US",                                                                            
		"52103323    Jun 14, 2011    Sebeny          Stephen     ssebeny@smithmicro.com                  1.0 Super Early Bird        Aug 12, 2011    40658955    PayPal Completed    250.0           7.24            Attending       513 Hamilton Blvd                                               Pittsburgh          PA          15237       US",                                                                            
		"52148605    Jun 14, 2011    Maxwell         Eric        ericmaxwell2003@yahoo.com               1.0 Super Early Bird        Aug 12, 2011    40696169    PayPal Completed    200.0           5.99            Attending       6214 Lakeshire Dr                                               Dublin              OH          43017       US",                                                                            
		"52149279    Jun 14, 2011    Ferguson        David       Wynllc@gmail.com                        1.0 Super Early Bird        Aug 12, 2011    40696699    PayPal Completed    200.0           5.99            Attending       3115 Reynoldsburg New Albany Rd                                 New Albany          OH          43054       US",                                                                            
		"52150427    Jun 14, 2011    Bailey          Jeff        jeff.bailey@fourthframe.com             1.0 Super Early Bird        Aug 12, 2011    40697659    PayPal Completed    200.0           5.99            Attending       5519 Old Pond Dr                                                Dublin              OH          43017       US",                                                                            
		"52298307    Jun 15, 2011    McSherry        Andy        andy@andylanddev.com                    1.0 Super Early Bird        Aug 12, 2011    40817909    PayPal Completed    250.0           7.24            Attending       5472 Winding Way                        Apt K                   Columbus            OH          43220       US",                                                                            
		"52336853    Jun 16, 2011    McAuley         Frank       frank.mcauley@gmail.com                 1.0 Super Early Bird        Aug 12, 2011    40848783    PayPal Completed    200.0           5.99            Attending       624 Chadwood Drive                                              Gahanna             OH          43230       US",                                                                            
		"52509415    Jun 17, 2011    Kelley          Jeff        SlaunchaMan@gmail.com                   1.0 Super Early Bird        Aug 12, 2011    40988021    PayPal Completed    200.0           5.99            Attending       50834 McAlees Dr.                                               Macomb              MI          48044       US",                                                                            
		"52659603    Jun 19, 2011    Skubik-Peplaski Stephen     codesmith@me.com                        1.0 Super Early Bird        Aug 12, 2011    41106619    PayPal Completed    250.0           7.24            Attending       264 Meadow Valley Rd.                                           Lexington           KY          40511       US",                                                                            
		"52812573    Jun 20, 2011    Ruth            Scott       scott@scottymanmedia.com                1.0 Super Early Bird        Aug 12, 2011    41223941    PayPal Completed    200.0           5.99            Attending       1510 Southlawn Dr. SW                                           Wyoming             MI          49509       US",                                                                            
		"52814179    Jun 20, 2011    mccamish        ron         rmccamish@gmail.com                     1.0 Super Early Bird        Aug 12, 2011    41225285    PayPal Completed    200.0           5.99            Attending       6053 round tower ln                                             dublin              OH          43017       US",                                                                            
		"52881805    Jun 21, 2011    Sjoquist        Nathan      nathan@sunetos.com                      1.0 Super Early Bird        Aug 12, 2011    41280461    PayPal Completed    200.0           5.99            Attending       467 Ward Road                                                   Wilmington          OH          45177       US",                                                                            
		"52905305    Jun 21, 2011    Shusta          Daniel      daniel@acaciatreesoftware.com           1.0 Super Early Bird        Aug 12, 2011    41299405    PayPal Completed    200.0           5.99            Attending       255 E State St                                                  Athens              OH          45701       US",                                                                            
		"52909201    Jun 21, 2011    Cantoni         Robert      forward.to.bob@gmail.com                1.0 Super Early Bird        Aug 12, 2011    41302555    PayPal Completed    200.0           5.99            Attending       58 great oak drive                                              Hudson              OH          44236       US",                                                                            
		"52955487    Jun 21, 2011    Morgan          Ceri        cerimorgan@yahoo.com                    1.0 Super Early Bird        Aug 12, 2011    41339035    PayPal Completed    200.0           5.99            Attending       5835 Windsor Ct                                                 McDonald            PA          15057       US",                                                                            
		"53004949    Jun 22, 2011    Hughes          Gordon      gordon@geeksinkilts.com                 1.0 Super Early Bird        Aug 12, 2011    41378365    PayPal Completed    250.0           7.24            Attending       2550 Augusta Blvd, Apt 202                                      Fairfield           OH          45014       US",                                                                            
		"53007235    Jun 22, 2011    Garland         Robert      cszerbin@e-safecs.com                   1.0 Super Early Bird        Aug 12, 2011    41380087    PayPal Completed    250.0           7.24            Attending       4 Penn Center West  STE 230             Penn Center Blvd        Pittsburgh          PA          15276       US",                                                                            
		"53043937    Jun 22, 2011    Gregory         John        jwgreg@mediagg.com                      1.0 Super Early Bird        Aug 12, 2011    41409023    PayPal Completed    200.0           5.99            Attending       716 Waterford Road                                              Louisville          KY          40207       US",                                                                            
		"53047795    Jun 22, 2011    Grassi          Daniel      dan@zaph.com                            1.0 Super Early Bird        Aug 12, 2011    41412227    PayPal Completed    250.0           7.24            Attending       1108 Tangelo Isle                                               Fort Lauderdale     FL          33315       US",                                                                            
		"53094339    Jun 22, 2011    Kraut           Seth        sethkraut@gmail.com                     1.0 Super Early Bird        Aug 12, 2011    41448855    PayPal Completed    200.0           5.99            Attending       6812 Bowerman St W                                              Worthington         OH          43085       US",                                                                            
		"53099927    Jun 22, 2011    Divierte        Jude        jdivierte@GSW-w.com                     1.0 Super Early Bird        Aug 12, 2011    41453243    PayPal Completed    200.0           5.99            Attending       5562 Oldwynne Road                                              Hilliard            OH          43026       US",                                                                            
		"53099929    Jun 22, 2011    Lachman         Ben         Ban.lachman@inventivcommunications.com  1.0 Super Early Bird        Aug 12, 2011    41453243    PayPal Completed    200.0           5.99            Attending       500 Olde Worthington Rd                                         Westerville         OH          43086       US",                                                                            
		"53402179    Jun 25, 2011    Pitre           Boisy       boisy@tee-boy.com                       1.0 Early Bird              Aug 12, 2011    41690917    PayPal Completed    350.0           9.74            Attending       441 Saint Paul Avenue                                           Opelousas           LA          70570       US",                                                                            
		"53881855    Jun 30, 2011    Rajagopal       Priya       priya.rajagopal@compuware.com           1.0 Early Bird              Aug 12, 2011    42071341    Free Order          0.0             0.0             Attending       1800 Meadowside Dr                                              Ann Arbor           MI          48104       US",                                                                            
		"54169745    Jul 04, 2011    O'Grady         Pete        pete@mintdigital.com                    1.0 Early Bird              Aug 12, 2011    42303795    PayPal Completed    350.0           9.74            Attending       Mint Digital, Unit 100, Exmouth House    3/11 Pine Street       London              London      EC1R0JH     GB",                                                                            
		"54236927    Jul 05, 2011    Shah            Nihar       nihar.shah@sogeti.com                   1.0 Early Bird              Aug 12, 2011    42356519    PayPal Completed    300.0           8.49            Attending       951 Summit St                                                   Columbus            OH          43201       US",                                                                            
		"54587611    Jul 07, 2011    Crockett        Ed          edbert1@gmail.com                       1.0 Early Bird              Aug 12, 2011    42642175    Free Order          0.0             0.0             Attending       1302 Peppercorn Drive                                           Galloway            OH          43119       US",                                                                            
		"54778741    Jul 09, 2011    Strecker        Jaymie      jstrecker@kosada.com                    1.0 Early Bird              Aug 12, 2011    42797181    PayPal Completed    300.0           8.49            Attending                                                                                           OH                      US",                                                                            
		"55497729    Jul 15, 2011    Webster         Eric        ewebster@aol.com                        1.0 Early Bird              Aug 12, 2011    43387931    PayPal Completed    350.0           9.74            Attending       3508 Lois Lane                                                  Huntsville          AL          35810       US",                                                                            
		"55599691    Jul 16, 2011    Gray            Dan         daniel.gray@me.com                      1.0 Early Bird              Aug 12, 2011    43467845    Free Order          0.0             0.0             Attending                                               56 E. Belmeadow Ln      Chagrin Falls       OH          44022       US",                                                                            
		"55917251    Jul 19, 2011    Frisby          Jim         jimfrisby@gmail.com                     1.0 Early Bird              Aug 12, 2011    43722217    PayPal Completed    259.0           7.47            Attending       88 W. Tulane Rd. Apt. D                                         Columbus            OH          43202       US",                                                                            
		"56000519    Jul 19, 2011    Daugherty       Matthew     matheda@gmail.com                       1.0 Early Bird              Aug 12, 2011    43787025    PayPal Completed    259.0           7.47            Attending       997 Kennedys Landing #4                 997 Kennedys Landing #4 Cincinnati          OH          45245       US",
		"56002179    Jul 19, 2011    Nyveldt         Al          al@razorant.com                         1.0 Early Bird              Aug 12, 2011    43788375    PayPal Completed    259.0           7.47            Attending       140 Risser Road                                                 Bainbridge          PA          17502       US",
		"56075871    Jul 20, 2011    Queiroz         Hermano     hjsqueiroz@gmail.com                    1.0 Early Bird              Aug 12, 2011    43847317    PayPal Completed    200.0           5.99            Attending       67 Oriole Lane                                                  Campbellsville      KY          42718       US",
		"56220547    Jul 21, 2011    Bobiney         Mike        michaelbobiney@quickenloans.com         1.0 Early Bird              Aug 12, 2011    43961107    PayPal Completed    300.0           8.49            Attending       1050 Woodward Ave                                               Detroit             MI          48226       US",
		"56220549    Jul 21, 2011    Kaump           Adam        adamkaump@quickenloans.com              1.0 Early Bird              Aug 12, 2011    43961107    PayPal Completed    300.0           8.49            Attending       1050 Woodward Ave                                               Detroit             MI          48226       US",
		"56228287    Jul 21, 2011    Schultz         John        jwschultz@gmail.com                     1.0 Early Bird              Aug 12, 2011    43967191    PayPal Completed    300.0           8.49            Attending       8318 Quail Haven Ct Apt A                                       Columbus            OH          43235       US",
		"56228541    Jul 21, 2011    Liu             Yue         yueliu@umich.edu                        1.0 Early Bird              Aug 12, 2011    43967405    PayPal Completed    300.0           8.49            Attending       3215 Dunwoodie Rd                                               Ann Arbor           MI          48105       US",
		"56255345    Jul 21, 2011    Kirkendall      Ricky       r1cky1337@gmail.com                     1.0 Early Bird              Aug 12, 2011    43989165    PayPal Completed    350.0           9.74            Attending       201 Trap Post Rd                                                Charleston          WV          25309       US",
		"56283683    Jul 21, 2011    PETRARCA        JULIE       jpetrarca@gmail.com                     1.0 Early Bird              Aug 12, 2011    44009971    PayPal Completed    300.0           8.49            Attending       3421 Bradford Road                                              CLEVELAND HTS       OH          44118       US",
		"56292605    Jul 21, 2011    Spears          Logan       loganjspears@yahoo.com                  1.0 Early Bird              Aug 12, 2011    44016297    PayPal Completed    350.0           9.74            Attending       3 Jasmine Lane                                                  Charleston          WV          25314       US",
		"56325529    Jul 22, 2011    King            Brian       bbk@pobox.com                           1.0 Early Bird              Aug 12, 2011    44042111    PayPal Completed    250.0           7.24            Attending       2245 Clifford Ct                                                Lewis Center        OH          43035       US",
		"56328197    Jul 22, 2011    Helbling        Joel        joel@joelhelbling.com                   1.0 Early Bird              Aug 12, 2011    44044347    PayPal Completed    250.0           7.24            Attending       PO Box 3772                                                     Dublin              OH          43016       US",
		"56330165    Jul 22, 2011    Sitko           Cory        csitko@ag.com                           1.0 Early Bird              Aug 12, 2011    44045927    PayPal Completed    350.0           9.74            Attending       1 American Rd                                                   Cleveland           OH          44144       US",
		"56339313    Jul 22, 2011    Jacobs          Ty          ty.jacobs@fourthframe.com               1.0 Early Bird              Aug 12, 2011    44052829    PayPal Completed    300.0           8.49            Attending       P.O. Box 234                                                    Pataskala           OH          43062       US",
		"56357635    Jul 22, 2011    Elliott         Justin      jde6@psu.edu                            1.0 Early Bird              Aug 12, 2011    44066785    PayPal Completed    350.0           9.74            Attending       108 Computer                            Bigler Road             University Park     PA          16802       US",
		"56396769    Jul 22, 2011    Rohlman         Eric        eric.rohlman@possibleworldwide.com      1.0 Early Bird              Aug 12, 2011    44096849    PayPal Completed    350.0           9.74            Attending                                                                                           OH                      US",
		"56406223    Jul 22, 2011    Smith           Richard     rsmithhockey@gmail.com                  1.0 Early Bird              Aug 12, 2011    44104629    PayPal Completed    350.0           9.74            Attending       500 Gibson Dr SW                                                Vienna              VA          22180       US",
		"56408891    Jul 22, 2011    McLaughlin      Samuel      S.McLaughlin.wv@gmail.com               1.0 Early Bird              Aug 12, 2011    44106815    PayPal Completed    300.0           8.49            Attending       33 Coventry Woods Road                                          South Charleston    WV          25309       US",
		"56437255    Jul 23, 2011    Adams           Scott       Scottpadams@gmail.com                   1.0 CocoaConf Registration  Aug 12, 2011    44129305    Free Order          0.0             0.0             Attending       4408 Birch View Dr                                              Louisville          KY          40299       US",
		"56672337    Jul 25, 2011    Lamb Jr         Tad         ri@tadlamb.com                          1.0 CocoaConf Registration  Aug 12, 2011    44312729    Free Order          0.0             0.0             Attending       10560 ST RT 665                                                 London              OH          43140       US",
		"56846879    Jul 27, 2011    Swing           Steve       steve.swing@gmail.com                   1.0 CocoaConf Registration  Aug 12, 2011    44445803    Free Order          0.0             0.0             Attending       1359 Briarshore Way                                             Lewis Center        OH          43035       US",
		"57104037    Jul 28, 2011    Kohls           Steve       steve@mostlyzeros.com                   1.0 CocoaConf Registration  Aug 12, 2011    44647485    PayPal Completed    300.0           8.49            Attending       2312 Far Hills Avenue #186                                      Dayton              OH          45419       US",
		"57171659    Jul 29, 2011    Aguinaga        Salvador    saguinag@nd.edu                         1.0 CocoaConf Registration  Aug 12, 2011    44700571    PayPal Completed    350.0           9.74            Attending       704 WILSON BLVD                                                 MISHAWAKA           IN          46545-6037  US",
		"57204993    Jul 29, 2011    Krac            jason       jasonkrac@gmail.com                     1.0 CocoaConf Registration  Aug 12, 2011    44725863    PayPal Completed    300.0           8.49            Attending       1104 Northwood Circle                                           New Albany          OH          43054       US",
		"57215051    Jul 29, 2011    Zatezalo        Shane       Shane@Lottadot.com                      1.0 CocoaConf Registration  Aug 12, 2011    44733541    PayPal Completed    300.0           8.49            Attending       5762 walterway dr                                               Hilliard            OH          3026        US"]
		def attendeeRole = Role.findByAuthority('ROLE_ATTENDEE')
		def records = []
		file.each{line ->
		    def data = [:]
		    data.lastName = line[28..43].trim()
		    data.firstName = line[44..55].trim()
		    data.email = line[56..95].trim()
		    data.username = line[56..95].trim()
		    data.city = line[284..303].trim()
		    data.state = line[304..315].trim()
		    data.zip = line[316..327].trim()
			data.enabled = true
			data.accountExpired = false
			data.accountLocked = false
			data.passwordExpired = false
			def user = new User(data)
			user.password = springSecurityService.encodePassword("cocoaconf")
			if (!user.save())
			    user.errors.allErrors.each{println it}
			else
			    UserRole.create user, attendeeRole
		}
		render "There are now ${User.count()} users!"
	}
	
	def changePassword = {	
	}
	
	def savePassword = {
		def user = User.findByUsername(springSecurityService.principal.username)
		if (springSecurityService.encodePassword(params.oldpassword) == user.password){
			if (params.password == params.password2){
				user.password = springSecurityService.encodePassword(params.password)
				if (user.save()){
					SCH.clearContext()
					flash.message = 'Your password has been changed.  Please login with new password.'
					redirect(controller:'login', action:'auth')
				}
				else{
					println "ERROR saving password change for ${user?.username}!!!"
					user.errors.allErrors.each{println it}
				    redirect(controller:'home', action:'announcement')
				}
			}
			else{
				flash.message = "New passwords do not match"
				render(view:'changePassword')
			}
		}
		else{
			flash.message = "Current password is incorrect."
			render(view:'changePassword')
		}
	}
	
    def save = {
	    params.password = springSecurityService.encodePassword("cocoaconf")
        def userInstance = new User(params)
        def attendeeRole = Role.findByAuthority('ROLE_ATTENDEE')
        if (userInstance.save(flush: true)) {
            flash.message = "${message(code: 'default.created.message', args: [message(code: 'user.label', default: 'User'), userInstance.id])}"
            UserRole.create userInstance, attendeeRole
            redirect(action: "show", id: userInstance.id)
        }
        else {
            render(view: "create", model: [userInstance: userInstance])
        }
    }

    def show = {
        def userInstance = User.get(params.id)
        if (!userInstance) {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'user.label', default: 'User'), params.id])}"
            redirect(action: "list")
        }
        else {
            [userInstance: userInstance]
        }
    }

    def edit = {
        def userInstance = User.get(params.id)
        if (!userInstance) {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'user.label', default: 'User'), params.id])}"
            redirect(action: "list")
        }
        else {
            return [userInstance: userInstance]
        }
    }

    def update = {
        def userInstance = User.get(params.id)
        if (userInstance) {
            if (params.version) {
                def version = params.version.toLong()
                if (userInstance.version > version) {
                    
                    userInstance.errors.rejectValue("version", "default.optimistic.locking.failure", [message(code: 'user.label', default: 'User')] as Object[], "Another user has updated this User while you were editing")
                    render(view: "edit", model: [userInstance: userInstance])
                    return
                }
            }
            userInstance.properties = params
            if (!userInstance.hasErrors() && userInstance.save(flush: true)) {
                flash.message = "${message(code: 'default.updated.message', args: [message(code: 'user.label', default: 'User'), userInstance.id])}"
                redirect(action: "show", id: userInstance.id)
            }
            else {
                render(view: "edit", model: [userInstance: userInstance])
            }
        }
        else {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'user.label', default: 'User'), params.id])}"
            redirect(action: "list")
        }
    }

    def delete = {
        def userInstance = User.get(params.id)
        if (userInstance) {
            try {
                userInstance.delete(flush: true)
                flash.message = "${message(code: 'default.deleted.message', args: [message(code: 'user.label', default: 'User'), params.id])}"
                redirect(action: "list")
            }
            catch (org.springframework.dao.DataIntegrityViolationException e) {
                flash.message = "${message(code: 'default.not.deleted.message', args: [message(code: 'user.label', default: 'User'), params.id])}"
                redirect(action: "show", id: params.id)
            }
        }
        else {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'user.label', default: 'User'), params.id])}"
            redirect(action: "list")
        }
    }
}
