package com.cocoaconf



import org.junit.*
import grails.test.mixin.*

@TestFor(MugShotController)
@Mock(MugShot)
class MugShotControllerTests {


    def populateValidParams(params) {
      assert params != null
      // TODO: Populate valid properties like...
      //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/mugShot/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.mugShotInstanceList.size() == 0
        assert model.mugShotInstanceTotal == 0
    }

    void testCreate() {
       def model = controller.create()

       assert model.mugShotInstance != null
    }

    void testSave() {
        controller.save()

        assert model.mugShotInstance != null
        assert view == '/mugShot/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/mugShot/show/1'
        assert controller.flash.message != null
        assert MugShot.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/mugShot/list'


        populateValidParams(params)
        def mugShot = new MugShot(params)

        assert mugShot.save() != null

        params.id = mugShot.id

        def model = controller.show()

        assert model.mugShotInstance == mugShot
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/mugShot/list'


        populateValidParams(params)
        def mugShot = new MugShot(params)

        assert mugShot.save() != null

        params.id = mugShot.id

        def model = controller.edit()

        assert model.mugShotInstance == mugShot
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/mugShot/list'

        response.reset()


        populateValidParams(params)
        def mugShot = new MugShot(params)

        assert mugShot.save() != null

        // test invalid parameters in update
        params.id = mugShot.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/mugShot/edit"
        assert model.mugShotInstance != null

        mugShot.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/mugShot/show/$mugShot.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        mugShot.clearErrors()

        populateValidParams(params)
        params.id = mugShot.id
        params.version = -1
        controller.update()

        assert view == "/mugShot/edit"
        assert model.mugShotInstance != null
        assert model.mugShotInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/mugShot/list'

        response.reset()

        populateValidParams(params)
        def mugShot = new MugShot(params)

        assert mugShot.save() != null
        assert MugShot.count() == 1

        params.id = mugShot.id

        controller.delete()

        assert MugShot.count() == 0
        assert MugShot.get(mugShot.id) == null
        assert response.redirectedUrl == '/mugShot/list'
    }
}
