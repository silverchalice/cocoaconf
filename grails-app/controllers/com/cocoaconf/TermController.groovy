package com.cocoaconf



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class TermController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        if(!params.slug) {
            // Get either the next term (if one is coming up) or the last one
            // (if there are no terms coming up). Either way, a "show" page.
            def nextTerm = Term.findByStartDateGreaterThan(new Date()) ?: Term.list().last()
            redirect action: "index", params: [slug: nextTerm.slug]
            return
        }
        println "\n\nhey yo. here are your params as we got them: $params\n\n"
        def termInstance = Term.findBySlug(params.slug)
        params.max = Math.min(max ?: 10, 100)
        respond Term.list(params), model:[termInstance: termInstance, termInstanceCount: Term.count()]
    }

    def show(Term termInstance) {
        respond termInstance
    }

    def create() {
        respond new Term(params)
    }

    @Transactional
    def save(Term termInstance) {
        if (termInstance == null) {
            notFound()
            return
        }

        if (termInstance.hasErrors()) {
            respond termInstance.errors, view:'create'
            return
        }

        termInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'term.label', default: 'Term'), termInstance.id])
                redirect termInstance
            }
            '*' { respond termInstance, [status: CREATED] }
        }
    }

    def edit(Term termInstance) {
        respond termInstance
    }

    @Transactional
    def update(Term termInstance) {
        if (termInstance == null) {
            notFound()
            return
        }

        if (termInstance.hasErrors()) {
            respond termInstance.errors, view:'edit'
            return
        }

        termInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Term.label', default: 'Term'), termInstance.id])
                redirect termInstance
            }
            '*'{ respond termInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Term termInstance) {

        if (termInstance == null) {
            notFound()
            return
        }

        termInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Term.label', default: 'Term'), termInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'term.label', default: 'Term'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
