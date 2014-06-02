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
        yearOfLastDeclaration  range: currentYear..currentYear-15, nullable:true, validator: {val, object ->
            def err = true
            if (!object.nothingNewToDeclare && val){
               err='formZero.error.year.without.nothing.new'
            }
            if (object.nothingNewToDeclare && !val){
                err='formZero.error.nothing.new.without.year.error'
            }

            return err

        }
	}

    String toString(){
        nothingToDeclare? "nothing to declare" : nothingNewToDeclare? "nothing new to declare since ${yearOfLastDeclaration}" : ""
    }
}
