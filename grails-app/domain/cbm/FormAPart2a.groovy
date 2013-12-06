package cbm

class FormAPart2a {

	Boolean existingNationalProgrammes
	Report report
	
	String toString() {
		return "${id} ${existingNationalProgrammes}"
	}

    static constraints = {
		existingNationalProgrammes widget:'radio'
    }
}
