package cbm

class FormB extends BaseForm {

	static belongsTo = [Report]
	
	String eventName
	String eventCategory
	Date eventDate
	
	String timeOfOutbreak
	String locationAffected
	String typeOfDisease
	String possibleCause
	String mainCharacteristics
	String detailedSymptoms
	String deviationFromNormalPattern
	String numOfPrimaryCases
	String numOfTotalCases
	String numDeaths
	String developmentOfOutbreak
	String measuresTaken
	String additionalInfo
	
	
	
	
    static constraints = {
		eventName blank:false
		eventCategory inList:["Human", "Plant", "Animal"]
		eventDate()
		timeOfOutbreak maxSize:500
		locationAffected maxSize:500
		typeOfDisease maxSize:500
		possibleCause maxSize:500
		mainCharacteristics maxSize:500
		detailedSymptoms maxSize:500
		deviationFromNormalPattern maxSize:500
		numOfPrimaryCases maxSize:500
		numOfTotalCases maxSize:500
		numDeaths maxSize:500
		developmentOfOutbreak maxSize:500
		measuresTaken maxSize:500
		additionalInfo maxSize:5000
		
		
    }
}
