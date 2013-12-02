package cbm

class FormAPart2bFunding {

  	static belongsTo = [FormAPart2b]
//	BigDecimal amount
	String source
	
//	FormAPart2b formAPart2b
	
	String toString() {
		return "${id} ${source}"
	}
	

//    static constraints = {
//		amount min: 0.01, max: 1000000000.00, scale: 2
//    }
}
