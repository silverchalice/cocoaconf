package com.cocoaconf



import org.junit.*
import grails.test.mixin.*

@TestFor(VenueController)
@Mock(Venue)
class VenueControllerTests {


    def populateValidParams(params) {
      assert params != null
      // TODO: Populate valid properties like...
      //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/venue/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.venueInstanceList.size() == 0
        assert model.venueInstanceTotal == 0
    }

    void testCreate() {
       def model = controller.create()

       assert model.venueInstance != null
    }

    void testSave() {
        controller.save()

        assert model.venueInstance != null
        assert view == '/venue/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/venue/show/1'
        assert controller.flash.message != null
        assert Venue.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/venue/list'


        populateValidParams(params)
        def venue = new Venue(params)

        assert venue.save() != null

        params.id = venue.id

        def model = controller.show()

        assert model.venueInstance == venue
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/venue/list'


        populateValidParams(params)
        def venue = new Venue(params)

        assert venue.save() != null

        params.id = venue.id

        def model = controller.edit()

        assert model.venueInstance == venue
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/venue/list'

        response.reset()


        populateValidParams(params)
        def venue = new Venue(params)

        assert venue.save() != null

        // test invalid parameters in update
        params.id = venue.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/venue/edit"
        assert model.venueInstance != null

        venue.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/venue/show/$venue.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        venue.clearErrors()

        populateValidParams(params)
        params.id = venue.id
        params.version = -1
        controller.update()

        assert view == "/venue/edit"
        assert model.venueInstance != null
        assert model.venueInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/venue/list'

        response.reset()

        populateValidParams(params)
        def venue = new Venue(params)

        assert venue.save() != null
        assert Venue.count() == 1

        params.id = venue.id

        controller.delete()

        assert Venue.count() == 0
        assert Venue.get(venue.id) == null
        assert response.redirectedUrl == '/venue/list'
    }
}
