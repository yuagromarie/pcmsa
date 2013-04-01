package pcsoftapp

class Panel {
	
	Integer airCondition
	Integer ceilingFan
	Integer lighting
	Integer outlet
	String deviceGroup
	Date dateCreated
	Date dateMeasured 
	
	
    static constraints = {
	
	deviceGroup(inList:['Air Condition', 'Ceiling Fan', 'Lighting', 'Outlet'], blank:false)
	dateCreated()
	
    }
}


