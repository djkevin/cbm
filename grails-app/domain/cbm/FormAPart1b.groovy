package cbm

class FormAPart1b {

// 	static belongsTo = [Report]
	Boolean bioSafetyLevel3
	Boolean bioSafetyLevel2
	String additionalInformation
	Report report
	
	String toString() {
		return "${id}"
	}
	

    static constraints = {
		bioSafetyLevel3()
		bioSafetyLevel2()
		additionalInformation maxSize:5000
    }
}