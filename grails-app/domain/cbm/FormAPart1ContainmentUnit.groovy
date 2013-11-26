package cbm

import cbm.FormAPart1a;

class FormAPart1ContainmentUnit {

	static belongsTo = [FormAPart1a]
	String bioSafetyLevel
	String unitType
	Integer unitSize
	String comment
	FormAPart1a facility
	
	
	String toString() {
		return "${id} ${bioSafetyLevel}"
	 }
	
	
	
    static constraints = {
		bioSafetyLevel inList: ["BSL4", "Enhanced BSL3"]
		unitType inList: ["laboratory", "treatment module"]
		unitSize blank:false
		comment maxSize:200
		facility nullable:false
    }
}
