package owlingapp


import org.springframework.dao.DataIntegrityViolationException
import grails.plugins.springsecurity.Secured

@Secured(['ROLE_ADMIN'])
class ResponseController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]
	static Boolean linkMe = true

    def index() {
        redirect(action: "list", params: params)
    }

    def list() {
        params.max = Math.min(params.max ? params.int('max') : 10, 100)
        [responseInstanceList: Response.list(params), ResponseInstanceTotal: Response.count()]
    }

    def create() {
        [responseInstance: new Response(params)]
    }

    def save() {
        def responseInstance = new Response(params)
        if (!responseInstance.save(flush: true)) {
            render(view: "create", model: [responseInstance: responseInstance])
            return
        }

		flash.message = message(code: 'default.created.message', args: [message(code: 'response.label', default: 'Response'), responseInstance.id])
        redirect(action: "show", id: responseInstance.id)
    }

    def show() {
        def responseInstance = Response.get(params.id)
        if (!responseInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'response.label', default: 'Response'), params.id])
            redirect(action: "list")
            return
        }

        [responseInstance: responseInstance]
    }

    def edit() {
        def responseInstance = Response.get(params.id)
        if (!responseInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'response.label', default: 'Response'), params.id])
            redirect(action: "list")
            return
        }

        [responseInstance: responseInstance]
    }

    def update() {
        def responseInstance = Response.get(params.id)
        if (!responseInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'response.label', default: 'Response'), params.id])
            redirect(action: "list")
            return
        }

        if (params.version) {
            def version = params.version.toLong()
            if (responseInstance.version > version) {
                responseInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'response.label', default: 'Response')] as Object[],
                          "Another user has updated this Scholar while you were editing")
                render(view: "edit", model: [responseInstance: responseInstance])
                return
            }
        }

        responseInstance.properties = params

        if (!responseInstance.save(flush: true)) {
            render(view: "edit", model: [responseInstance: responseInstance])
            return
        }

		flash.message = message(code: 'default.updated.message', args: [message(code: 'response.label', default: 'Response'), responseInstance.id])
        redirect(action: "show", id: responseInstance.id)
    }

    def delete() {
        def responseInstance = Response.get(params.id)
        if (!responseInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'response.label', default: 'Response'), params.id])
            redirect(action: "list")
            return
        }

        try {
            responseInstance.delete(flush: true)
			flash.message = message(code: 'default.deleted.message', args: [message(code: 'response.label', default: 'Response'), params.id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
			flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'response.label', default: 'Response'), params.id])
            redirect(action: "show", id: params.id)
        }
    }
}

