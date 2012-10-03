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
        println "Entering UserController:pickSessions..."
        println params
        
        def user = User.findByUsername(springSecurityService.principal.username)
        if (!user.choice){
            
            println "saving user choice..."
            user.choice = new SessionChoice(params)
        }
        else {
            println "saving user choice..."
            user.choice.properties = params

            user.choice.session01 = params.session01 ? true : false
            user.choice.session02 = params.session02 ? true : false
            user.choice.session03 = params.session03 ? true : false
            user.choice.session04 = params.session04 ? true : false
            user.choice.session05 = params.session05 ? true : false
            user.choice.session06 = params.session06 ? true : false
            user.choice.session07 = params.session07 ? true : false
            user.choice.session08 = params.session08 ? true : false
            user.choice.session09 = params.session09 ? true : false
            user.choice.session10 = params.session10 ? true : false
            user.choice.session11 = params.session11 ? true : false
            user.choice.session12 = params.session12 ? true : false
            user.choice.session13 = params.session13 ? true : false
            user.choice.session14 = params.session14 ? true : false
            user.choice.session15 = params.session15 ? true : false
            user.choice.session16 = params.session16 ? true : false
            user.choice.session17 = params.session17 ? true : false
            user.choice.session18 = params.session18 ? true : false
            user.choice.session19 = params.session19 ? true : false
            user.choice.session20 = params.session20 ? true : false
            user.choice.session21 = params.session21 ? true : false
            user.choice.session22 = params.session22 ? true : false
            user.choice.session23 = params.session23 ? true : false
            user.choice.session24 = params.session24 ? true : false
            user.choice.session25 = params.session25 ? true : false
            user.choice.session26 = params.session26 ? true : false
            user.choice.session27 = params.session27 ? true : false
            user.choice.session28 = params.session28 ? true : false
            user.choice.session29 = params.session29 ? true : false
            user.choice.session30 = params.session30 ? true : false


        }
        if (!user.save()){
            user.errors.allErrors.each{println it}
        }
        flash.message = "Thank you for your help!"
        redirect(controller:'home', action:'schedule')
    }
    
    def importUsers = {
        if (User.findByUsername('cynthia.young@wacom.com')){
            render "Import already run."
            return
        }
        def file = [
        "Thompson        Patrick     patrick@pthompson.org               ",
		"Hillhouse       Jim         jimhillhouse@me.com                 ",
		"Poole           John        john@primatelabs.ca                 ",
		"Young           Cynthia     cynthia.young@wacom.com             ",
		"Hanson          Mark        mark.hanson@wacom.com               ",
		"Gomes           Rick        rgomes@wacom.com                    ",
		"Barnes          Patrick     pmbarnes@gmail.com                  ",
		"Brandorff       Steffen     sbrand@imv.au.dk                    ",
		"Adams           Ron         the4eegroup@gmail.com               ",
		"Ruffenach       Collin      cruffenach@gmail.com                ",
		"Barker          Dustin      dustin.barker@gmail.com             ",
		"So              Bill        hokchun@gmail.com                   ",
		"Rupp            David       david@ruppworks.com                 ",
		"Hayter          Ron         rshayter@mac.com                    ",
		"Bauer           Jon         jon@covelop.org                     ",
		"Gillespie       Art         art@tapsquare.com                   ",
		"KETTER          NICK        nketter@gmail.com                   ",
		"Zhang           Yuduo       yzhang@yammer-inc.com               ",
		"Weston          Dave        dweston@yammer-inc.com              ",
		"Roth            David       uzziel@gmail.com                    ",
		"Medford         Jeremy      jeremymedford@vintagerobotdev.com   ",
		"Brooks          Tim         usna91@msn.com                      ",
		"McLeman         Jeff        jeffmc@sidecar.me                   ",
		"Linnemann       Robert      robertlinnemann@gmail.com           ",
		"Wineman         Dan         dwineman@gmail.com                  ",
		"H               Gene        news@littledogmedia.com             ",
		"Hjelle          Jon         hjon@andyet.net                     ",
		"Eickmann        Robert      roberte3@gmail.com                  ",
		"Chambless       Bjorn       bjorn@builtlight.org                ",
		"Arnold          Tim         tim@timarnold.org                   ",
		"Pauley          Kyle        kyle@creativetechs.com              ",
		"Zilberstein     Gene        genia@genia.org                     ",
		"Bransfield      Jack        jack@builtlight.org                 ",
		"Olson           Michael     MichaelOlsonApps@gmail.com          ",
		"Buckley         Michael     michael@buckleyisms.com             ",
		"Cornaby         Colin       colin.cornaby@mac.com               ",
		"Howell          Dave        dave@avatron.com                    ",
		"Pattee          Mike        mike@avatron.com                    ",
		"Buletti         Heather     heather@avatron.com                 ",
		"Elliott         Stephen     selliott@avatron.com                ",
		"Lopez Jr        Jaime       jaime.lopez.jr@gmail.com            ",
		"Tran            Nghia       scott.tran@gmail.com                ",
		"Lisac           Will        will@lisac.org                      ",
		"Wainstock       Scott       ssw@rentrakmail.com                 ",
		"Karwanski       Michal      michal.karwanski@allegro.pl         ",
		"Deneka          Daniel      daniel.deneka@allegro.pl            ",
		"Rakes           Mark        mrakes@me.com                       ",
		"Rossi           Shiney      srossi@manilla.com                  ",
		"Lewis           Michael     mlewis@tappin.com                   ",
		"Savino          Laura       laura.savino@gmail.com              ",
		"Kasprzyk        David       joragan@gmail.com                   ",
		"Beck            Craig       craig.beck@bonzalabs.com            ",
		"Miller          Craig       craig.miller@spatialminds.com       ",
		"Bentch          Jeremiah    jbentch@gmail.com                   ",
		"Goracke         Paul        paul@blackpixel.com                 ",
		"de Saint Salvy  Hugues      hugo@artifiction.net                ",
		"Hanagan         David       dave@hamagain.com                   ",
		"Henderson       Brian       brian.henderson@ymail.com           ",
		"May             Joshua      notjosh@gmail.com                   ",
		"Irons           Nathaniel   com-cocoaconf@bumppo.net            ",
		"Read            Noah        noahread@gmail.com                  ",
		"Sun             Ke          ksun@ballytech.com                  ",
		"Schmitt         Frank       fschmitt@ballytech.com              ",
		"Valenzuela      Jorge       jvalenzu@ksu.edu                    ",
		"McDonald        Adam        adam@xhatch.com                     ",
		"Dinsmore        Jason       jason@xhatch.com                    ",
		"Moore           Jake        jake@xhatch.com                     ",
		"Nucho           Natalie     natalie@anchorfree.com              ",
		"Connell         Amanda      amanda.connell@apporchard.com       ",
		"Kim             Kevin       kevin@apporchard.com                ",
		"Lipscomb Jr.    McAdory     mcadory.lipscomb.jr@apporchard.com  ",
		"Nason           Neville     neville@sfo2nrt.com                 ",
		"Smith           Bennett     bennett@focalshift.com              ",
		"Twist           Josh        josh@molmorg.com                    ",
		"Williams        Spencer     s@spencerenglish.com                ",
		"Emmet           Noah        noah@upstartlabs.com                ",
		"Oslislo         Jennifer    poeks@upstartlabs.com               ",
		"Guimont         Kelly       kellyg@tuaw.com                     ",
		"Lucas           Tate        tl@tatelucas.com                    ",
		"Spahr-Summers   Justin      jspahrsummers@github.com            ",
		"Pena            Sheree      shereemaria@gmail.com               ",
		"Hughes          Gordon      gordon@me.com                       ",
		"Rutherford      Jim         jim.rutherford@gmail.com            ",
		"Albright        Robb        ralbright@walmartlabs.com           ",
		"Reagan          Matt        mreagan@walmartlabs.com             ",
		"Salo            Patrick     newtdude@surewest.net               ",
		"Terrell         Ilan        ilanterrell@gmail.com               "
		]

        
        def attendeeRole = Role.findByAuthority('ROLE_ATTENDEE')
        def records = []
        file.each{line ->
            def data = [:]
            data.lastName = line[0..15].trim()
            data.firstName = line[16..27].trim()
            data.email = line[28..63].trim()
            data.username = line[28..63].trim()
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
    
    def resetTaha = {
	    def user = User.get(192)
	    user.password = springSecurityService.encodePassword("cocoaconf")
	    user.save()
	    render "Done!"
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
