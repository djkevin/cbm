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
		
	Integer militaryPersonnel
	Integer civilianPersonnel
	
	Integer scientists
	Integer engineers
	Integer technicians
	Integer administrators
	
	String scientificDisciplines
	Integer contractors
	String fundingSources
	Long fundResearch
	Long fundDevelopment
	Long fundTest
	
	String publicationPolicy
	String publicPapers
	String bioDefenseWork
		
	static transients = ['totalFloorArea', 'totalPersonnel']
	
    static constraints = {
		facilityName maxSize:250, blank:false
		location maxSize:500, blank:false
		postalAddress maxSize:500, blank:false
		floorAreaBL2 nullable:false, min:0.0
		floorAreaBL3 nullable:false, min:0.0
		floorAreaBL4 nullable:false, min:0.0
		militaryPersonnel nullable:false, min:0
		civilianPersonnel nullable:false, min:0
		scientists nullable:false, min:0
		engineers nullable:false, min:0
		technicians nullable:false, min:0
		administrators nullable:false, min:0
		scientificDisciplines maxSize:2000, blank:false
		contractors nullable:false, min:0
		fundingSources maxSize:2000, blank:false
		fundResearch nullable:false, min:0L
		fundDevelopment nullable:false, min:0L
		fundTest nullable:false, min:0L
		publicationPolicy maxSize:2000, blank:true
		publicPapers maxSize:2000, blank:true
		bioDefenseWork maxSize:2000, blank:true
    }
	
	BigDecimal getTotalFloorArea() {
		if (!floorAreaBL2 || !floorAreaBL3 || !floorAreaBL4)
			return null
		else 
			floorAreaBL2 + floorAreaBL3 + floorAreaBL4
	}

	Long getTotalPersonnel() {
		if (!militaryPersonnel || !civilianPersonnel)
			return null
		else 
			militaryPersonnel + civilianPersonnel	
	}
	
	String toString() {
		return "${facilityName}"
	}
	
}
