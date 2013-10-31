package cbm

class FormAPart1 {

	String facilityName
	String responsibleOrganisation
	String location
	String postalAddress
	String financingSources
	String scope
	
//	static hasMany = [FormAPart1ContainmentUnit]
	
	
	
    static constraints = {
		facilityName maxSize:250, blank:false
		responsibleOrganisation maxSize:500, blank:false
		location maxSize:500, blank:false
		postalAddress maxSize:500, blank:false
		financingSources maxSize:500, blank:false
		scope maxSize:1000, blank:false
    }
}
