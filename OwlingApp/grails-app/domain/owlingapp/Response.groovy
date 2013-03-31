package owlingapp


class Response {
	
	String response
	Complaint complaint
	
	static hasMany = [feedback: Feedback]
	
    static constraints = {
	
	response (maxLength:500, blank:false)
	complaint (maxLength:100, blank:false)
    }
	
	String toString(){
		"${this.response}"
	}
}

