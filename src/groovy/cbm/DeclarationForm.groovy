package cbm

/**
 * These fields get embedded in cbm.form.FormZero
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
		yearOfLastDeclaration range: 2000..2050, nullable:true
	}

    String toString(){
        nothingToDeclare? "nothing to declare" : nothingNewToDeclare? "nothing new to declare since ${yearOfLastDeclaration}" : ""
    }
}
