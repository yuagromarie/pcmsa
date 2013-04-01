package pcsoftapp

class UserController {

    def index={ }
	
	def login={
		if(params.username=="consumer" && params.password=="pass"){
		flash.message="login succeed"
		session.user="admin"
		}
		else{
		flash.message="login failed, please enter a correct username or password"
	}
	redirect(action:'index')
	}

	def logout = {
		session.user= null
		redirect(action:'index')
	
	}
}