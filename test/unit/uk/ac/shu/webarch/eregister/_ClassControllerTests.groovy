package uk.ac.shu.webarch.eregister



import org.junit.*
import grails.test.mixin.*

@TestFor(_ClassController)
@Mock(_Class)
class _ClassControllerTests {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/_Class/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model._ClassInstanceList.size() == 0
        assert model._ClassInstanceTotal == 0
    }

    void testCreate() {
        def model = controller.create()

        assert model._ClassInstance != null
    }

    void testSave() {
        controller.save()

        assert model._ClassInstance != null
        assert view == '/_Class/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/_Class/show/1'
        assert controller.flash.message != null
        assert _Class.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/_Class/list'

        populateValidParams(params)
        def _Class = new _Class(params)

        assert _Class.save() != null

        params.id = _Class.id

        def model = controller.show()

        assert model._ClassInstance == _Class
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/_Class/list'

        populateValidParams(params)
        def _Class = new _Class(params)

        assert _Class.save() != null

        params.id = _Class.id

        def model = controller.edit()

        assert model._ClassInstance == _Class
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/_Class/list'

        response.reset()

        populateValidParams(params)
        def _Class = new _Class(params)

        assert _Class.save() != null

        // test invalid parameters in update
        params.id = _Class.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/_Class/edit"
        assert model._ClassInstance != null

        _Class.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/_Class/show/$_Class.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        _Class.clearErrors()

        populateValidParams(params)
        params.id = _Class.id
        params.version = -1
        controller.update()

        assert view == "/_Class/edit"
        assert model._ClassInstance != null
        assert model._ClassInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/_Class/list'

        response.reset()

        populateValidParams(params)
        def _Class = new _Class(params)

        assert _Class.save() != null
        assert _Class.count() == 1

        params.id = _Class.id

        controller.delete()

        assert _Class.count() == 0
        assert _Class.get(_Class.id) == null
        assert response.redirectedUrl == '/_Class/list'
    }
}
