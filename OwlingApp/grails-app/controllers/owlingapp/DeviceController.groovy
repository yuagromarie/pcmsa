package owlingapp

import grails.plugins.springsecurity.Secured

@Secured(['ROLE_CONSUMER'])
class DeviceController {
	
	
	def index={ }
		
   	def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [deviceInstanceList: Device.list(params), deviceInstanceTotal:  Device.count()]
    }

	
}
