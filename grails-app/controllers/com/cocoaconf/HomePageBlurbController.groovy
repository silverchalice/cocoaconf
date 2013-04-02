package com.cocoaconf

import org.springframework.dao.DataIntegrityViolationException

class HomePageBlurbController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [homePageBlurbInstanceList: HomePageBlurb.list(params), homePageBlurbInstanceTotal: HomePageBlurb.count()]
    }

    def create() {
        [homePageBlurbInstance: new HomePageBlurb(params)]
    }

    def save() {
        def homePageBlurbInstance = new HomePageBlurb(params)
        if (!homePageBlurbInstance.save(flush: true)) {
            render(view: "create", model: [homePageBlurbInstance: homePageBlurbInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'homePageBlurb.label', default: 'HomePageBlurb'), homePageBlurbInstance.id])
        redirect(action: "show", id: homePageBlurbInstance.id)
    }

    def show(Long id) {
        def homePageBlurbInstance = HomePageBlurb.get(id)
        if (!homePageBlurbInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'homePageBlurb.label', default: 'HomePageBlurb'), id])
            redirect(action: "list")
            return
        }

        [homePageBlurbInstance: homePageBlurbInstance]
    }

    def edit(Long id) {
        def homePageBlurbInstance = HomePageBlurb.get(id)
        if (!homePageBlurbInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'homePageBlurb.label', default: 'HomePageBlurb'), id])
            redirect(action: "list")
            return
        }

        [homePageBlurbInstance: homePageBlurbInstance]
    }

    def update(Long id, Long version) {
        def homePageBlurbInstance = HomePageBlurb.get(id)
        if (!homePageBlurbInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'homePageBlurb.label', default: 'HomePageBlurb'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (homePageBlurbInstance.version > version) {
                homePageBlurbInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'homePageBlurb.label', default: 'HomePageBlurb')] as Object[],
                          "Another user has updated this HomePageBlurb while you were editing")
                render(view: "edit", model: [homePageBlurbInstance: homePageBlurbInstance])
                return
            }
        }

        homePageBlurbInstance.properties = params

        if (!homePageBlurbInstance.save(flush: true)) {
            render(view: "edit", model: [homePageBlurbInstance: homePageBlurbInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'homePageBlurb.label', default: 'HomePageBlurb'), homePageBlurbInstance.id])
        redirect(action: "show", id: homePageBlurbInstance.id)
    }

    def delete(Long id) {
        def homePageBlurbInstance = HomePageBlurb.get(id)
        if (!homePageBlurbInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'homePageBlurb.label', default: 'HomePageBlurb'), id])
            redirect(action: "list")
            return
        }

        try {
            homePageBlurbInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'homePageBlurb.label', default: 'HomePageBlurb'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'homePageBlurb.label', default: 'HomePageBlurb'), id])
            redirect(action: "show", id: id)
        }
    }
}
