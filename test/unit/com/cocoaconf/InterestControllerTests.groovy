package com.cocoaconf



import org.junit.*
import grails.test.mixin.*

@TestFor(InterestController)
@Mock(Interest)
class InterestControllerTests {


    def populateValidParams(params) {
      assert params != null
      // TODO: Populate valid properties like...
      //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/interest/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.interestInstanceList.size() == 0
        assert model.interestInstanceTotal == 0
    }

    void testCreate() {
       def model = controller.create()

       assert model.interestInstance != null
    }

    void testSave() {
        controller.save()

        assert model.interestInstance != null
        assert view == '/interest/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/interest/show/1'
        assert controller.flash.message != null
        assert Interest.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/interest/list'


        populateValidParams(params)
        def interest = new Interest(params)

        assert interest.save() != null

        params.id = interest.id

        def model = controller.show()

        assert model.interestInstance == interest
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/interest/list'


        populateValidParams(params)
        def interest = new Interest(params)

        assert interest.save() != null

        params.id = interest.id

        def model = controller.edit()

        assert model.interestInstance == interest
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/interest/list'

        response.reset()


        populateValidParams(params)
        def interest = new Interest(params)

        assert interest.save() != null

        // test invalid parameters in update
        params.id = interest.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/interest/edit"
        assert model.interestInstance != null

        interest.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/interest/show/$interest.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        interest.clearErrors()

        populateValidParams(params)
        params.id = interest.id
        params.version = -1
        controller.update()

        assert view == "/interest/edit"
        assert model.interestInstance != null
        assert model.interestInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/interest/list'

        response.reset()

        populateValidParams(params)
        def interest = new Interest(params)

        assert interest.save() != null
        assert Interest.count() == 1

        params.id = interest.id

        controller.delete()

        assert Interest.count() == 0
        assert Interest.get(interest.id) == null
        assert response.redirectedUrl == '/interest/list'
    }
}
