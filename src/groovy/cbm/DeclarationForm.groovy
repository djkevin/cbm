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
        //1987 is the earliest year of a CBM declaration (Ticket 105)
        yearOfLastDeclaration  range: currentYear..1987, nullable:true, validator: {val, object ->
            def err = true
            if (!object.nothingNewToDeclare && val){
               err='formZero.error.year.without.nothing.new'
            }
            if (object.nothingNewToDeclare && !val){
                err='formZero.error.nothing.new.without.year.error'
            }
            err
        }
	}

    String toString(){
        nothingToDeclare? "nothing to declare" : nothingNewToDeclare? "nothing new to declare since ${yearOfLastDeclaration}" : ""
    }
}
