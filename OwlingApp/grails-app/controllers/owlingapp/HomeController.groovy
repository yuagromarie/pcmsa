package owlingapp
import grails.plugins.springsecurity.Secured

@Secured(['ROLE_ADMIN'])
class HomeController {

    def scaffold = Home
}