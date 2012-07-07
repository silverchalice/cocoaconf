package com.cocoaconf



import org.junit.*
import grails.test.mixin.*

@TestFor(PrizeController)
@Mock(Prize)
class PrizeControllerTests {


    def populateValidParams(params) {
      assert params != null
      // TODO: Populate valid properties like...
      //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/prize/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.prizeInstanceList.size() == 0
        assert model.prizeInstanceTotal == 0
    }

    void testCreate() {
       def model = controller.create()

       assert model.prizeInstance != null
    }

    void testSave() {
        controller.save()

        assert model.prizeInstance != null
        assert view == '/prize/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/prize/show/1'
        assert controller.flash.message != null
        assert Prize.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/prize/list'


        populateValidParams(params)
        def prize = new Prize(params)

        assert prize.save() != null

        params.id = prize.id

        def model = controller.show()

        assert model.prizeInstance == prize
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/prize/list'


        populateValidParams(params)
        def prize = new Prize(params)

        assert prize.save() != null

        params.id = prize.id

        def model = controller.edit()

        assert model.prizeInstance == prize
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/prize/list'

        response.reset()


        populateValidParams(params)
        def prize = new Prize(params)

        assert prize.save() != null

        // test invalid parameters in update
        params.id = prize.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/prize/edit"
        assert model.prizeInstance != null

        prize.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/prize/show/$prize.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        prize.clearErrors()

        populateValidParams(params)
        params.id = prize.id
        params.version = -1
        controller.update()

        assert view == "/prize/edit"
        assert model.prizeInstance != null
        assert model.prizeInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/prize/list'

        response.reset()

        populateValidParams(params)
        def prize = new Prize(params)

        assert prize.save() != null
        assert Prize.count() == 1

        params.id = prize.id

        controller.delete()

        assert Prize.count() == 0
        assert Prize.get(prize.id) == null
        assert response.redirectedUrl == '/prize/list'
    }
}
