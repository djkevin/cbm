package cbm

class FormZero extends BaseForm{
	
	static belongsTo = [Report]
	static embedded = ['formAPart1','formAPart2a', 'formAPart2b','formAPart2c','formB', 'formC', 'formE', 'formF', 'formG']
	

	DeclarationForm formAPart1
	DeclarationForm formAPart2a
	DeclarationForm formAPart2b
	DeclarationForm formAPart2c
	DeclarationForm formB
	DeclarationForm formC
	DeclarationForm formE
	DeclarationForm formF
	DeclarationForm formG
	//Use embedded fields for nothing to declare patterns
	Report report

    static constraints = {
    }

    String toString() {
        return "${title}_${id}"
    }
}
