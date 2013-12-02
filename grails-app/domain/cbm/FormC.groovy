package cbm

class FormC extends BaseForm{
	
	static belongsTo = [Report]
	
	String comments

    static constraints = {
		comments maxSize:5000
		
    }
}
