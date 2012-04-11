package com.cocoaconf



import org.junit.*
import grails.test.mixin.*

@TestFor(ConferenceController)
@Mock(Conference)
class ConferenceControllerTests {


    def populateValidParams(params) {
      assert params != null
      // TODO: Populate valid properties like...
      //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/conference/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.conferenceInstanceList.size() == 0
        assert model.conferenceInstanceTotal == 0
    }

    void testCreate() {
       def model = controller.create()

       assert model.conferenceInstance != null
    }

    void testSave() {
        controller.save()

        assert model.conferenceInstance != null
        assert view == '/conference/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/conference/show/1'
        assert controller.flash.message != null
        assert Conference.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/conference/list'


        populateValidParams(params)
        def conference = new Conference(params)

        assert conference.save() != null

        params.id = conference.id

        def model = controller.show()

        assert model.conferenceInstance == conference
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/conference/list'


        populateValidParams(params)
        def conference = new Conference(params)

        assert conference.save() != null

        params.id = conference.id

        def model = controller.edit()

        assert model.conferenceInstance == conference
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/conference/list'

        response.reset()


        populateValidParams(params)
        def conference = new Conference(params)

        assert conference.save() != null

        // test invalid parameters in update
        params.id = conference.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/conference/edit"
        assert model.conferenceInstance != null

        conference.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/conference/show/$conference.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        conference.clearErrors()

        populateValidParams(params)
        params.id = conference.id
        params.version = -1
        controller.update()

        assert view == "/conference/edit"
        assert model.conferenceInstance != null
        assert model.conferenceInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/conference/list'

        response.reset()

        populateValidParams(params)
        def conference = new Conference(params)

        assert conference.save() != null
        assert Conference.count() == 1

        params.id = conference.id

        controller.delete()

        assert Conference.count() == 0
        assert Conference.get(conference.id) == null
        assert response.redirectedUrl == '/conference/list'
    }
}
