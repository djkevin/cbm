package cbm

class DeclarationOfMeasures {
	
	String legislation
	String regulation
	String otherMeasures
	String amendedSinceLastYear
	
	static constraints = {
		legislation inList: ["Yes", "No", "Unknown"]
		regulation inList: ["Yes", "No", "Unknown"]
		otherMeasures inList: ["Yes", "No", "Unknown"]
		amendedSinceLastYear inList: ["Yes", "No", "Unknown"]
	}

    String toString(){
        "${legislation} ${regulation} ${otherMeasures} ${amendedSinceLastYear}"
    }



}
