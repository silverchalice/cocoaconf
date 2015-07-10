package com.cocoaconf



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class TrainingTypeController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond TrainingType.list(params), model:[trainingTypeInstanceCount: TrainingType.count()]
    }

    def show(TrainingType trainingTypeInstance) {
        respond trainingTypeInstance
    }

    def create() {
        respond new TrainingType(params)
    }

    @Transactional
    def save(TrainingType trainingTypeInstance) {
        if (trainingTypeInstance == null) {
            notFound()
            return
        }

        if (trainingTypeInstance.hasErrors()) {
            respond trainingTypeInstance.errors, view:'create'
            return
        }

        trainingTypeInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'trainingType.label', default: 'TrainingType'), trainingTypeInstance.id])
                redirect trainingTypeInstance
            }
            '*' { respond trainingTypeInstance, [status: CREATED] }
        }
    }

    def edit(TrainingType trainingTypeInstance) {
        respond trainingTypeInstance
    }

    @Transactional
    def update(TrainingType trainingTypeInstance) {
        if (trainingTypeInstance == null) {
            notFound()
            return
        }

        if (trainingTypeInstance.hasErrors()) {
            respond trainingTypeInstance.errors, view:'edit'
            return
        }

        trainingTypeInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'TrainingType.label', default: 'TrainingType'), trainingTypeInstance.id])
                redirect trainingTypeInstance
            }
            '*'{ respond trainingTypeInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(TrainingType trainingTypeInstance) {

        if (trainingTypeInstance == null) {
            notFound()
            return
        }

        trainingTypeInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'TrainingType.label', default: 'TrainingType'), trainingTypeInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'trainingType.label', default: 'TrainingType'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
