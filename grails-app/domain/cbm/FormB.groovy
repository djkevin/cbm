package cbm

class FormB extends BaseForm {

	static belongsTo = [Report]
	
	String eventName
	String eventCategory
	Date eventDate
	
	String timeOfOutbreak
	String locationAffected
	String typeOfDisease
    String sourceOfDisease
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

    Report report

    static constraints = {
		eventName blank:false
		eventCategory inList:["Human", "Plant", "Animal"]
		eventDate()
		timeOfOutbreak maxSize:500, nullable:true
		locationAffected maxSize:500, nullable:true
		typeOfDisease maxSize:500, nullable:true
        sourceOfDisease maxSize: 500, nullable:true
		possibleCause maxSize:500, nullable:true
		mainCharacteristics maxSize:500, nullable:true
		detailedSymptoms maxSize:500, nullable:true
		deviationFromNormalPattern maxSize:500, nullable:true
		numOfPrimaryCases maxSize:500, nullable:true
		numOfTotalCases maxSize:500, nullable:true
		numDeaths maxSize:500, nullable:true
		developmentOfOutbreak maxSize:500, nullable:true
		measuresTaken maxSize:500, nullable:true
		additionalInfo maxSize:5000, nullable:true
    }

    String toString(){
        eventName
    }
}
