package com.cocoaconf



import grails.test.mixin.*
import spock.lang.*

@TestFor(TermController)
@Mock(Term)
class TermControllerSpec extends Specification {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void "Test the index action returns the correct model"() {

        when:"The index action is executed"
            controller.index()

        then:"The model is correct"
            !model.termInstanceList
            model.termInstanceCount == 0
    }

    void "Test the create action returns the correct model"() {
        when:"The create action is executed"
            controller.create()

        then:"The model is correctly created"
            model.termInstance!= null
    }

    void "Test the save action correctly persists an instance"() {

        when:"The save action is executed with an invalid instance"
            request.contentType = FORM_CONTENT_TYPE
            request.method = 'POST'
            def term = new Term()
            term.validate()
            controller.save(term)

        then:"The create view is rendered again with the correct model"
            model.termInstance!= null
            view == 'create'

        when:"The save action is executed with a valid instance"
            response.reset()
            populateValidParams(params)
            term = new Term(params)

            controller.save(term)

        then:"A redirect is issued to the show action"
            response.redirectedUrl == '/term/show/1'
            controller.flash.message != null
            Term.count() == 1
    }

    void "Test that the show action returns the correct model"() {
        when:"The show action is executed with a null domain"
            controller.show(null)

        then:"A 404 error is returned"
            response.status == 404

        when:"A domain instance is passed to the show action"
            populateValidParams(params)
            def term = new Term(params)
            controller.show(term)

        then:"A model is populated containing the domain instance"
            model.termInstance == term
    }

    void "Test that the edit action returns the correct model"() {
        when:"The edit action is executed with a null domain"
            controller.edit(null)

        then:"A 404 error is returned"
            response.status == 404

        when:"A domain instance is passed to the edit action"
            populateValidParams(params)
            def term = new Term(params)
            controller.edit(term)

        then:"A model is populated containing the domain instance"
            model.termInstance == term
    }

    void "Test the update action performs an update on a valid domain instance"() {
        when:"Update is called for a domain instance that doesn't exist"
            request.contentType = FORM_CONTENT_TYPE
            request.method = 'PUT'
            controller.update(null)

        then:"A 404 error is returned"
            response.redirectedUrl == '/term/index'
            flash.message != null


        when:"An invalid domain instance is passed to the update action"
            response.reset()
            def term = new Term()
            term.validate()
            controller.update(term)

        then:"The edit view is rendered again with the invalid instance"
            view == 'edit'
            model.termInstance == term

        when:"A valid domain instance is passed to the update action"
            response.reset()
            populateValidParams(params)
            term = new Term(params).save(flush: true)
            controller.update(term)

        then:"A redirect is issues to the show action"
            response.redirectedUrl == "/term/show/$term.id"
            flash.message != null
    }

    void "Test that the delete action deletes an instance if it exists"() {
        when:"The delete action is called for a null instance"
            request.contentType = FORM_CONTENT_TYPE
            request.method = 'DELETE'
            controller.delete(null)

        then:"A 404 is returned"
            response.redirectedUrl == '/term/index'
            flash.message != null

        when:"A domain instance is created"
            response.reset()
            populateValidParams(params)
            def term = new Term(params).save(flush: true)

        then:"It exists"
            Term.count() == 1

        when:"The domain instance is passed to the delete action"
            controller.delete(term)

        then:"The instance is deleted"
            Term.count() == 0
            response.redirectedUrl == '/term/index'
            flash.message != null
    }
}
