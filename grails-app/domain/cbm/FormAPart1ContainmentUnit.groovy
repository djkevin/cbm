package cbm

class FormAPart1ContainmentUnit {

	String bioSafetyLevel
	String unitType
	Double unitSize
	String comment
	FormAPart1 facility
	
//	static belongsTo = [formAPart1:FormAPart1]
	static belongsTo = FormAPart1
	
    static constraints = {
		bioSafetyLevel inList: ["BSL4", "Enhanced BSL3"]
		unitType inList: ["laboratory", "treatment module"]
		unitSize range: 0..2000000
		comment size: 0..100
		
    }
}
