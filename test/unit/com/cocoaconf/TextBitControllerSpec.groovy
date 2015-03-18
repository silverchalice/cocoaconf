package com.cocoaconf



import grails.test.mixin.*
import spock.lang.*

@TestFor(TextBitController)
@Mock(TextBit)
class TextBitControllerSpec extends Specification {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void "Test the index action returns the correct model"() {

        when:"The index action is executed"
            controller.index()

        then:"The model is correct"
            !model.textBitInstanceList
            model.textBitInstanceCount == 0
    }

    void "Test the create action returns the correct model"() {
        when:"The create action is executed"
            controller.create()

        then:"The model is correctly created"
            model.textBitInstance!= null
    }

    void "Test the save action correctly persists an instance"() {

        when:"The save action is executed with an invalid instance"
            request.contentType = FORM_CONTENT_TYPE
            request.method = 'POST'
            def textBit = new TextBit()
            textBit.validate()
            controller.save(textBit)

        then:"The create view is rendered again with the correct model"
            model.textBitInstance!= null
            view == 'create'

        when:"The save action is executed with a valid instance"
            response.reset()
            populateValidParams(params)
            textBit = new TextBit(params)

            controller.save(textBit)

        then:"A redirect is issued to the show action"
            response.redirectedUrl == '/textBit/show/1'
            controller.flash.message != null
            TextBit.count() == 1
    }

    void "Test that the show action returns the correct model"() {
        when:"The show action is executed with a null domain"
            controller.show(null)

        then:"A 404 error is returned"
            response.status == 404

        when:"A domain instance is passed to the show action"
            populateValidParams(params)
            def textBit = new TextBit(params)
            controller.show(textBit)

        then:"A model is populated containing the domain instance"
            model.textBitInstance == textBit
    }

    void "Test that the edit action returns the correct model"() {
        when:"The edit action is executed with a null domain"
            controller.edit(null)

        then:"A 404 error is returned"
            response.status == 404

        when:"A domain instance is passed to the edit action"
            populateValidParams(params)
            def textBit = new TextBit(params)
            controller.edit(textBit)

        then:"A model is populated containing the domain instance"
            model.textBitInstance == textBit
    }

    void "Test the update action performs an update on a valid domain instance"() {
        when:"Update is called for a domain instance that doesn't exist"
            request.contentType = FORM_CONTENT_TYPE
            request.method = 'PUT'
            controller.update(null)

        then:"A 404 error is returned"
            response.redirectedUrl == '/textBit/index'
            flash.message != null


        when:"An invalid domain instance is passed to the update action"
            response.reset()
            def textBit = new TextBit()
            textBit.validate()
            controller.update(textBit)

        then:"The edit view is rendered again with the invalid instance"
            view == 'edit'
            model.textBitInstance == textBit

        when:"A valid domain instance is passed to the update action"
            response.reset()
            populateValidParams(params)
            textBit = new TextBit(params).save(flush: true)
            controller.update(textBit)

        then:"A redirect is issues to the show action"
            response.redirectedUrl == "/textBit/show/$textBit.id"
            flash.message != null
    }

    void "Test that the delete action deletes an instance if it exists"() {
        when:"The delete action is called for a null instance"
            request.contentType = FORM_CONTENT_TYPE
            request.method = 'DELETE'
            controller.delete(null)

        then:"A 404 is returned"
            response.redirectedUrl == '/textBit/index'
            flash.message != null

        when:"A domain instance is created"
            response.reset()
            populateValidParams(params)
            def textBit = new TextBit(params).save(flush: true)

        then:"It exists"
            TextBit.count() == 1

        when:"The domain instance is passed to the delete action"
            controller.delete(textBit)

        then:"The instance is deleted"
            TextBit.count() == 0
            response.redirectedUrl == '/textBit/index'
            flash.message != null
    }
}
