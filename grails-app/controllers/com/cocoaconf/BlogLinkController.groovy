package com.cocoaconf

class BlogLinkController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index = {
        redirect(action: "list", params: params)
    }

    def list = {
        params.max = Math.min(params.max ? params.int('max') : 10, 100)
        [blogLinkInstanceList: BlogLink.list(params), blogLinkInstanceTotal: BlogLink.count()]
    }

    def create = {
        def blogLinkInstance = new BlogLink()
        blogLinkInstance.properties = params
        return [blogLinkInstance: blogLinkInstance]
    }

    def save = {
        def blogLinkInstance = new BlogLink(params)
        if (blogLinkInstance.save(flush: true)) {
            flash.message = "${message(code: 'default.created.message', args: [message(code: 'blogLink.label', default: 'BlogLink'), blogLinkInstance.id])}"
            redirect(action: "show", id: blogLinkInstance.id)
        }
        else {
            render(view: "create", model: [blogLinkInstance: blogLinkInstance])
        }
    }

    def show = {
        def blogLinkInstance = BlogLink.get(params.id)
        if (!blogLinkInstance) {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'blogLink.label', default: 'BlogLink'), params.id])}"
            redirect(action: "list")
        }
        else {
            [blogLinkInstance: blogLinkInstance]
        }
    }

    def edit = {
        def blogLinkInstance = BlogLink.get(params.id)
        if (!blogLinkInstance) {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'blogLink.label', default: 'BlogLink'), params.id])}"
            redirect(action: "list")
        }
        else {
            return [blogLinkInstance: blogLinkInstance]
        }
    }

    def update = {
        def blogLinkInstance = BlogLink.get(params.id)
        if (blogLinkInstance) {
            if (params.version) {
                def version = params.version.toLong()
                if (blogLinkInstance.version > version) {
                    
                    blogLinkInstance.errors.rejectValue("version", "default.optimistic.locking.failure", [message(code: 'blogLink.label', default: 'BlogLink')] as Object[], "Another user has updated this BlogLink while you were editing")
                    render(view: "edit", model: [blogLinkInstance: blogLinkInstance])
                    return
                }
            }
            blogLinkInstance.properties = params
            if (!blogLinkInstance.hasErrors() && blogLinkInstance.save(flush: true)) {
                flash.message = "${message(code: 'default.updated.message', args: [message(code: 'blogLink.label', default: 'BlogLink'), blogLinkInstance.id])}"
                redirect(action: "show", id: blogLinkInstance.id)
            }
            else {
                render(view: "edit", model: [blogLinkInstance: blogLinkInstance])
            }
        }
        else {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'blogLink.label', default: 'BlogLink'), params.id])}"
            redirect(action: "list")
        }
    }

    def delete = {
        def blogLinkInstance = BlogLink.get(params.id)
        if (blogLinkInstance) {
            try {
                blogLinkInstance.delete(flush: true)
                flash.message = "${message(code: 'default.deleted.message', args: [message(code: 'blogLink.label', default: 'BlogLink'), params.id])}"
                redirect(action: "list")
            }
            catch (org.springframework.dao.DataIntegrityViolationException e) {
                flash.message = "${message(code: 'default.not.deleted.message', args: [message(code: 'blogLink.label', default: 'BlogLink'), params.id])}"
                redirect(action: "show", id: params.id)
            }
        }
        else {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'blogLink.label', default: 'BlogLink'), params.id])}"
            redirect(action: "list")
        }
    }
	
	def roundup = {
		def blogLinks = BlogLink.list(sort:'id')
		[blogLinks:blogLinks]
	}
}
