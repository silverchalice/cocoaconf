package com.cocoaconf

class LocationRequestController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index = {
        redirect(action: "list", params: params)
    }

    def list = {
        params.max = Math.min(params.max ? params.int('max') : 10, 100)
        [locationRequestInstanceList: LocationRequest.list(params), locationRequestInstanceTotal: LocationRequest.count()]
    }

    def create = {
        def locationRequestInstance = new LocationRequest()
        locationRequestInstance.properties = params
        return [locationRequestInstance: locationRequestInstance]
    }

    def save = {
        def locationRequestInstance = new LocationRequest(params)
        if (locationRequestInstance.save(flush: true)) {
            flash.message = "${message(code: 'default.created.message', args: [message(code: 'locationRequest.label', default: 'LocationRequest'), locationRequestInstance.id])}"
            redirect(action: "show", id: locationRequestInstance.id)
        }
        else {
            render(view: "create", model: [locationRequestInstance: locationRequestInstance])
        }
    }

    def saveRequest = {
        def locationRequestInstance = new LocationRequest(params)
        if (locationRequestInstance.save(flush: true)) {
            println "saved"
            flash.message = "Thanks for the recommendation for a CocoaConf near ${locationRequestInstance.city}, ${locationRequestInstance.state}. We'll let you know when we're in town!"
            redirect(controller: 'home', action: "nearYou", locationRequestInstance: locationRequestInstance)
        }
        else {
            println "problem"
            locationRequestInstance.errors.allErrors.each {println it}
            flash.message = "Sorry, your information was invalid. Please include city, state, and a valid email address should you choose to provide one."
            redirect(controller: 'home', action: "nearYou", locationRequestInstance: locationRequestInstance)
        }
    }


    def show = {
        def locationRequestInstance = LocationRequest.get(params.id)
        if (!locationRequestInstance) {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'locationRequest.label', default: 'LocationRequest'), params.id])}"
            redirect(action: "list")
        }
        else {
            [locationRequestInstance: locationRequestInstance]
        }
    }

    def edit = {
        def locationRequestInstance = LocationRequest.get(params.id)
        if (!locationRequestInstance) {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'locationRequest.label', default: 'LocationRequest'), params.id])}"
            redirect(action: "list")
        }
        else {
            return [locationRequestInstance: locationRequestInstance]
        }
    }

    def update = {
        def locationRequestInstance = LocationRequest.get(params.id)
        if (locationRequestInstance) {
            if (params.version) {
                def version = params.version.toLong()
                if (locationRequestInstance.version > version) {

                    locationRequestInstance.errors.rejectValue("version", "default.optimistic.locking.failure", [message(code: 'locationRequest.label', default: 'LocationRequest')] as Object[], "Another user has updated this LocationRequest while you were editing")
                    render(view: "edit", model: [locationRequestInstance: locationRequestInstance])
                    return
                }
            }
            locationRequestInstance.properties = params
            if (!locationRequestInstance.hasErrors() && locationRequestInstance.save(flush: true)) {
                flash.message = "${message(code: 'default.updated.message', args: [message(code: 'locationRequest.label', default: 'LocationRequest'), locationRequestInstance.id])}"
                redirect(action: "show", id: locationRequestInstance.id)
            }
            else {
                render(view: "edit", model: [locationRequestInstance: locationRequestInstance])
            }
        }
        else {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'locationRequest.label', default: 'LocationRequest'), params.id])}"
            redirect(action: "list")
        }
    }

    def delete = {
        def locationRequestInstance = LocationRequest.get(params.id)
        if (locationRequestInstance) {
            try {
                locationRequestInstance.delete(flush: true)
                flash.message = "${message(code: 'default.deleted.message', args: [message(code: 'locationRequest.label', default: 'LocationRequest'), params.id])}"
                redirect(action: "list")
            }
            catch (org.springframework.dao.DataIntegrityViolationException e) {
                flash.message = "${message(code: 'default.not.deleted.message', args: [message(code: 'locationRequest.label', default: 'LocationRequest'), params.id])}"
                redirect(action: "show", id: params.id)
            }
        }
        else {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'locationRequest.label', default: 'LocationRequest'), params.id])}"
            redirect(action: "list")
        }
    }
}
