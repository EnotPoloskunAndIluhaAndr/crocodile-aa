package crocodile

import org.springframework.dao.DataIntegrityViolationException

class WordController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    /*def index() {
        redirect(action: "list", params: params)
    }

    def list() {
        params.max = Math.min(params.max ? params.int('max') : 10, 100)
        [wordInstanceList: Word.list(params), wordInstanceTotal: Word.count()]
    }

    def create() {
        [wordInstance: new Word(params)]
    }

    def save() {
        def wordInstance = new Word(params)
        if (!wordInstance.save(flush: true)) {
            render(view: "create", model: [wordInstance: wordInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'word.label', default: 'Word'), wordInstance.id])
        redirect(action: "show", id: wordInstance.id)
    }

    def show() {
        def wordInstance = Word.get(params.id)
        if (!wordInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'word.label', default: 'Word'), params.id])
            redirect(action: "list")
            return
        }

        [wordInstance: wordInstance]
    }

    def edit() {
        def wordInstance = Word.get(params.id)
        if (!wordInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'word.label', default: 'Word'), params.id])
            redirect(action: "list")
            return
        }

        [wordInstance: wordInstance]
    }

    def update() {
        def wordInstance = Word.get(params.id)
        if (!wordInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'word.label', default: 'Word'), params.id])
            redirect(action: "list")
            return
        }

        if (params.version) {
            def version = params.version.toLong()
            if (wordInstance.version > version) {
                wordInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                        [message(code: 'word.label', default: 'Word')] as Object[],
                        "Another user has updated this Word while you were editing")
                render(view: "edit", model: [wordInstance: wordInstance])
                return
            }
        }

        wordInstance.properties = params

        if (!wordInstance.save(flush: true)) {
            render(view: "edit", model: [wordInstance: wordInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'word.label', default: 'Word'), wordInstance.id])
        redirect(action: "show", id: wordInstance.id)
    }

    def delete() {
        def wordInstance = Word.get(params.id)
        if (!wordInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'word.label', default: 'Word'), params.id])
            redirect(action: "list")
            return
        }

        try {
            wordInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'word.label', default: 'Word'), params.id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'word.label', default: 'Word'), params.id])
            redirect(action: "show", id: params.id)
        }
    }*/
}
