package owlingapp

import org.springframework.dao.DataIntegrityViolationException
import grails.plugins.springsecurity.Secured

@Secured(['ROLE_ADMIN'])
class FeedbackController {
  
    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]
	static Boolean linkMe = true

    def index() {
        redirect(action: "list", params: params)
    }
	
	@Secured(['ROLE_USER', 'ROLE_ADMIN'])
    def list() {
        params.max = Math.min(params.max ? params.int('max') : 10, 100)
        [feedbackInstanceList: Feedback.list(params), feedbackInstanceTotal: Feedback.count()]
    }

    def create() {
        [feedbackInstance: new Feedback(params)]
    }

    def save() {
        def feedbackInstance = new Feedback(params)
        if (!feedbackInstance.save(flush: true)) {
            render(view: "create", model: [feedbackInstance: feedbackInstance])
            return
        }

		flash.message = message(code: 'default.created.message', args: [message(code: 'feedback.label', default: 'Feedback'), feedbackInstance.id])
        redirect(action: "show", id: feedbackInstance.id)
    }

    def show() {
        def feedbackInstance = Feedback.get(params.id)
        if (!feedbackInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'feedback.label', default: 'Feedback'), params.id])
            redirect(action: "list")
            return
        }

        [feedbackInstance: feedbackInstance]
    }

    def edit() {
        def feedbackInstance = Feedback.get(params.id)
        if (!feedbackInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'feedback.label', default: 'Feedback'), params.id])
            redirect(action: "list")
            return
        }

        [feedbackInstance: feedbackInstance]
    }

    def update() {
        def feedbackInstance =Feedback.get(params.id)
        if (!feedbackInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'feedback.label', default: 'Feedback'), params.id])
            redirect(action: "list")
            return
        }

        if (params.version) {
            def version = params.version.toLong()
            if (feedbackInstance.version > version) {
                feedbackInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'feedback.label', default: 'Feedback')] as Object[],
                          "Another user has updated this Feedback while you were editing")
                render(view: "edit", model: [feedbackInstance: feedbackInstance])
                return
            }
        }

        feedbackInstance.properties = params

        if (!feedbackInstance.save(flush: true)) {
            render(view: "edit", model: [feedbackInstance: feedbackInstance])
            return
        }

		flash.message = message(code: 'default.updated.message', args: [message(code: 'feedback.label', default: 'Feedback'), feedbackInstance.id])
        redirect(action: "show", id: feedbackInstance.id)
    }

    def delete() {
        def feedbackInstance = Feedback.get(params.id)
        if (!feedbackInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'feedback.label', default: 'Feedback'), params.id])
            redirect(action: "list")
            return
        }

        try {
            feedbackInstance.delete(flush: true)
			flash.message = message(code: 'default.deleted.message', args: [message(code: 'feedback.label', default: 'Feedback'), params.id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
			flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'feedback.label', default: 'Feedback'), params.id])
            redirect(action: "show", id: params.id)
        }
    }
}
