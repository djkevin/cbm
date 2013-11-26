package cbm

class StateParty {
	
	static hasMany = [report:Report, nationalContact:NationalContact]
	
	Country country
	Date accessionRatification
	
	String toString() {
		return "${id} ${country}"
	}

    static constraints = {
		country nullable:false, unique:true
		accessionRatification nullable:true
    }
}
