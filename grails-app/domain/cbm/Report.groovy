package cbm

import cbm.Country;
import cbm.Language;

class Report {


	static hasMany = [formAPart1 : FormAPart1a, formAPart2b: FormAPart2b]
	static hasOne = [formAPart1b: FormAPart1b, formAPart2a: FormAPart2a]
	static belongsTo = [stateParty: StateParty]
	static auditable = true
	
	Date dateCreated
	Date lastUpdated
	
	Language language
	Integer year
	String reportStatus
	String publicationStatus
	Boolean officialVersion
	
	
    static constraints = {
		language unique:['year', 'stateParty']
		year range: 2000..2050
		reportStatus inList: ["Draft","Submitted"]
		publicationStatus inList: ["Published", "Not published"]
		officialVersion()
		formAPart1b nullable:true
		formAPart2a nullable:true
    }
	
	String toString() {
		return "${id} ${stateParty.country}_${year}_${language}"
	}
	

}
