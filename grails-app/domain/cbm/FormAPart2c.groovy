package cbm

class FormAPart2c {
	//Detailed info on facilities. Each program (FormAPart2b) can have many facilities assigned/contributing to it
	static belongsTo = [FormAPart2b]
	
	FormAPart2b formAPart2b
	
	// fields that can be copied from FormAPart1A
	String facilityName
	String location
	String postalAddress
	
	// fields unique to this form
	BigDecimal floorAreaBL2
	BigDecimal floorAreaBL3
	BigDecimal floorAreaBL4
	
	static transients = ['totalFloorArea']
	
    static constraints = {
		facilityName maxSize:250, blank:false
		location maxSize:500, blank:false
		postalAddress maxSize:500, blank:false
		floorAreaBL2 nullable:false, min:0.0
		floorAreaBL3 nullable:false, min:0.0
		floorAreaBL4 nullable:false, min:0.0
    }
	
	BigDecimal getTotalFloorArea() {
		if (!floorAreaBL2 || !floorAreaBL3 || !floorAreaBL4)
			return null
		else 
			floorAreaBL2 + floorAreaBL3 + floorAreaBL4
	}

	String toString() {
		return "${facilityName}"
	}
	
}
