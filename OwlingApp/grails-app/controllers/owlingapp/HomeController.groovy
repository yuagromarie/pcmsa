package owlingapp
import grails.plugins.springsecurity.Secured

class HomeController {
@Secured(['ROLE_ADMIN'])
class HomeController {

    def scaffold = Home
}
