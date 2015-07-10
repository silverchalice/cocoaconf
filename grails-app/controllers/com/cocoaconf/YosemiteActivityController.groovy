package com.cocoaconf



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class YosemiteActivityController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond YosemiteActivity.list(params), model:[yosemiteActivityInstanceCount: YosemiteActivity.count()]
    }

    def show(YosemiteActivity yosemiteActivityInstance) {
        respond yosemiteActivityInstance
    }

    def create() {
        respond new YosemiteActivity(params)
    }

    @Transactional
    def save(YosemiteActivity yosemiteActivityInstance) {
        if (yosemiteActivityInstance == null) {
            notFound()
            return
        }

        if (yosemiteActivityInstance.hasErrors()) {
            respond yosemiteActivityInstance.errors, view:'create'
            return
        }

        yosemiteActivityInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'yosemiteActivity.label', default: 'YosemiteActivity'), yosemiteActivityInstance.id])
                redirect yosemiteActivityInstance
            }
            '*' { respond yosemiteActivityInstance, [status: CREATED] }
        }
    }

    def edit(YosemiteActivity yosemiteActivityInstance) {
        respond yosemiteActivityInstance
    }

    @Transactional
    def update(YosemiteActivity yosemiteActivityInstance) {
        if (yosemiteActivityInstance == null) {
            notFound()
            return
        }

        if (yosemiteActivityInstance.hasErrors()) {
            respond yosemiteActivityInstance.errors, view:'edit'
            return
        }

        yosemiteActivityInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'YosemiteActivity.label', default: 'YosemiteActivity'), yosemiteActivityInstance.id])
                redirect yosemiteActivityInstance
            }
            '*'{ respond yosemiteActivityInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(YosemiteActivity yosemiteActivityInstance) {

        if (yosemiteActivityInstance == null) {
            notFound()
            return
        }

        yosemiteActivityInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'YosemiteActivity.label', default: 'YosemiteActivity'), yosemiteActivityInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'yosemiteActivity.label', default: 'YosemiteActivity'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
