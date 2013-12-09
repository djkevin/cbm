package cbm

class FormAPart2b extends BaseForm{

	static belongsTo = [Report]
	static hasMany = [formAPart2c: FormAPart2c]
	
	String programName
	String objectives
	//Funding Source and amounts
	Boolean conductedUnderContract// or String?
	String proportionContracted
	String summaryObjectivesContractor
	byte[] organisationalStructureDiagram     //Uploaded files bind automatically to byte[] field
    String declaration
    BigDecimal amount
    String source
	
	
    Report report

	String toString() {
		return "${programName}"
	}
	

    static constraints = {
		programName()
		objectives blank:false, maxSize:5000 
		conductedUnderContract()
		proportionContracted blank:false, maxSize:5000 
		summaryObjectivesContractor blank:false, maxSize:5000 
		organisationalStructureDiagram nullable:true, size:0..1024*1024*5 //5MB
        declaration nullable:true, maxSize: 5000
        amount min: 0.01, max: 1000000000.00, scale: 2, blank:false
        source maxSize: 500
        //formAPart2c nullable: true
		
    }
}
