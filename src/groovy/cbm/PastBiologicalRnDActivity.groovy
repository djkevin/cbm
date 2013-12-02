package cbm

class PastBiologicalRnDActivity {
	
	Boolean pastBiologicalActivity
	String periodOfActivity
	String summaryOfRnDActivities
	
	static constraints = {
		pastBiologicalActivity()
		periodOfActivity maxSize:100
		summaryOfRnDActivities maxSize:5000
	}
	

}
