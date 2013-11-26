package cbm

class FormAPart2a {

//	static belongsTo = [Report]
	Boolean existingNationalProgrammes
	Report report
	
	String toString() {
		return "${id} ${existingNationalProgrammes}"
	}
	

    static constraints = {
		existingNationalProgrammes widget:'radio'
    }
}
