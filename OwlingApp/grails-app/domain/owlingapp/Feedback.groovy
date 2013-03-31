package owlingapp

class Feedback {
	
	String feedback
	Response response
	
	static belongsTo = [Response]
	
    static constraints = {
	feedback (maxLength:500, blank:false)
	response (maxLength:500)
    }
	
	String toString(){
		"%{this.feedback}"
	}
}
