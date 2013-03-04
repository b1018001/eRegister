package uk.ac.shu.webarch.eregister

import org.springframework.dao.DataIntegrityViolationException

class _ClassController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [_ClassInstanceList: _Class.list(params), _ClassInstanceTotal: _Class.count()]
    }

    def create() {
        [_ClassInstance: new _Class(params)]
    }

    def save() {
        def _ClassInstance = new _Class(params)
        if (!_ClassInstance.save(flush: true)) {
            render(view: "create", model: [_ClassInstance: _ClassInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: '_Class.label', default: '_Class'), _ClassInstance.id])
        redirect(action: "show", id: _ClassInstance.id)
    }

    def show(Long id) {
        def _ClassInstance = _Class.get(id)
        if (!_ClassInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: '_Class.label', default: '_Class'), id])
            redirect(action: "list")
            return
        }

        [_ClassInstance: _ClassInstance]
    }

    def edit(Long id) {
        def _ClassInstance = _Class.get(id)
        if (!_ClassInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: '_Class.label', default: '_Class'), id])
            redirect(action: "list")
            return
        }

        [_ClassInstance: _ClassInstance]
    }

    def update(Long id, Long version) {
        def _ClassInstance = _Class.get(id)
        if (!_ClassInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: '_Class.label', default: '_Class'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (_ClassInstance.version > version) {
                _ClassInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: '_Class.label', default: '_Class')] as Object[],
                          "Another user has updated this _Class while you were editing")
                render(view: "edit", model: [_ClassInstance: _ClassInstance])
                return
            }
        }

        _ClassInstance.properties = params

        if (!_ClassInstance.save(flush: true)) {
            render(view: "edit", model: [_ClassInstance: _ClassInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: '_Class.label', default: '_Class'), _ClassInstance.id])
        redirect(action: "show", id: _ClassInstance.id)
    }

    def delete(Long id) {
        def _ClassInstance = _Class.get(id)
        if (!_ClassInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: '_Class.label', default: '_Class'), id])
            redirect(action: "list")
            return
        }

        try {
            _ClassInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: '_Class.label', default: '_Class'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: '_Class.label', default: '_Class'), id])
            redirect(action: "show", id: id)
        }
    }
}
