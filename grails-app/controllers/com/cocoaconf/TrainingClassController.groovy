package com.cocoaconf



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class TrainingClassController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond TrainingClass.list(params), model:[trainingClassInstanceCount: TrainingClass.count()]
    }

    def show(TrainingClass trainingClassInstance) {
        respond trainingClassInstance
    }

    def create() {
        respond new TrainingClass(params)
    }

    @Transactional
    def save(TrainingClass trainingClassInstance) {
        if (trainingClassInstance == null) {
            notFound()
            return
        }

        if (trainingClassInstance.hasErrors()) {
            respond trainingClassInstance.errors, view:'create'
            return
        }

        trainingClassInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'trainingClass.label', default: 'TrainingClass'), trainingClassInstance.id])
                redirect trainingClassInstance
            }
            '*' { respond trainingClassInstance, [status: CREATED] }
        }
    }

    def edit(TrainingClass trainingClassInstance) {
        respond trainingClassInstance
    }

    @Transactional
    def update(TrainingClass trainingClassInstance) {
        if (trainingClassInstance == null) {
            notFound()
            return
        }

        if (trainingClassInstance.hasErrors()) {
            respond trainingClassInstance.errors, view:'edit'
            return
        }

        trainingClassInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'TrainingClass.label', default: 'TrainingClass'), trainingClassInstance.id])
                redirect trainingClassInstance
            }
            '*'{ respond trainingClassInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(TrainingClass trainingClassInstance) {

        if (trainingClassInstance == null) {
            notFound()
            return
        }

        trainingClassInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'TrainingClass.label', default: 'TrainingClass'), trainingClassInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'trainingClass.label', default: 'TrainingClass'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
