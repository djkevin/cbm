package cbm

import org.joda.time.LocalDate

/**
 * These fields get embedded in cbm.form.FormZero
 * @author jutliah
 *
 */
class DeclarationForm {
	Boolean nothingToDeclare
	Boolean nothingNewToDeclare
	Integer yearOfLastDeclaration
    static int currentYear =  new LocalDate().getYear()
	
	static constraints = {
		nothingToDeclare()
		nothingNewToDeclare()
        yearOfLastDeclaration  range: currentYear..currentYear-15, nullable:true
	}

    String toString(){
        nothingToDeclare? "nothing to declare" : nothingNewToDeclare? "nothing new to declare since ${yearOfLastDeclaration}" : ""
    }
}
