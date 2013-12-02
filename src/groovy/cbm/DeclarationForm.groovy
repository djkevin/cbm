package cbm

/**
 * These fields get embedded in cbm.FormZero 
 * @author jutliah
 *
 */
class DeclarationForm {
	Boolean nothingToDeclare
	Boolean nothingNewToDeclare
	Integer yearOfLastDeclaration
	
	static constraints = {
		nothingToDeclare()
		nothingNewToDeclare()
		yearOfLastDeclaration range: 2000..2050
	}
}
