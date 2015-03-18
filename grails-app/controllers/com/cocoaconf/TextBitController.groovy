package com.cocoaconf



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class TextBitController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond TextBit.list(params), model:[textBitInstanceCount: TextBit.count()]
    }

    def show(TextBit textBitInstance) {
        respond textBitInstance
    }

    def create() {
        respond new TextBit(params)
    }

    @Transactional
    def save(TextBit textBitInstance) {
        if (textBitInstance == null) {
            notFound()
            return
        }

        if (textBitInstance.hasErrors()) {
            respond textBitInstance.errors, view:'create'
            return
        }

        textBitInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'textBit.label', default: 'TextBit'), textBitInstance.id])
                redirect textBitInstance
            }
            '*' { respond textBitInstance, [status: CREATED] }
        }
    }

    def edit(TextBit textBitInstance) {
        respond textBitInstance
    }

    @Transactional
    def update(TextBit textBitInstance) {
        if (textBitInstance == null) {
            notFound()
            return
        }

        if (textBitInstance.hasErrors()) {
            respond textBitInstance.errors, view:'edit'
            return
        }

        textBitInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'TextBit.label', default: 'TextBit'), textBitInstance.id])
                redirect textBitInstance
            }
            '*'{ respond textBitInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(TextBit textBitInstance) {

        if (textBitInstance == null) {
            notFound()
            return
        }

        textBitInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'TextBit.label', default: 'TextBit'), textBitInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'textBit.label', default: 'TextBit'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
