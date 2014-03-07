package cbm

class PastBiologicalRnDActivity {
	
	Boolean pastBiologicalActivity
	String periodOfActivity
	String summaryOfRnDActivities
	
	static constraints = {
		pastBiologicalActivity()
		periodOfActivity maxSize:250
		summaryOfRnDActivities maxSize:5000
	}

    String toString() {
        return "${pastBiologicalActivity}_${periodOfActivity}"
    }
	

}
