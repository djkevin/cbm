package cbm

class FormAPart2b {

	static belongsTo = [Report]
	static hasMany = [formAPart2bFunding : FormAPart2bFunding, formAPart2c: FormAPart2c]
	
	String programName
	String objectives
	//Funding Source and amounts
	Boolean conductedUnderContract// or String?
	String proportionContracted
	String summaryObjectivesContractor
	Byte[] organisationalStructureDiagram
	
	
//	Report report
	static transients = ['totalFunding']
	
	String toString() {
		return "${id} ${programName}"
	}
	

    static constraints = {
		programName()
		objectives blank:false, maxSize:5000 
		conductedUnderContract()
		proportionContracted blank:false, maxSize:5000 
		summaryObjectivesContractor blank:false, maxSize:5000 
		organisationalStructureDiagram size:0..1024*1024*5 //5MB
		
    }
}
