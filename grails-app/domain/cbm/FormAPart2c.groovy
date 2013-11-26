package cbm

class FormAPart2c {
	//Detailed info on facilities. Each program (FormAPart2b) can have many facilities assigned/contributing to it
	static belongsTo = [FormAPart2b]
	String facilityName
	String location
	String mailingAddress
	String addressLine2
	String city
	
	
    static constraints = {
    }
}
