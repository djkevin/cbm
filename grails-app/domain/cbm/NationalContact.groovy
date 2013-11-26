package cbm

class NationalContact {

	static belongsTo = [stateParty : StateParty]
	static embedded = ['address']
	
	String title
	String firstName
	String lastName
	String position
	Address address
	String telephone
	String fax
	String email
	String url
	
    static constraints = {
		title inList: ["Mr", "Ms", "Dr"], blank:false
		firstName maxSize:100, blank:false
		lastName maxSize:100, blank:false
		position maxSize:100
		address nullable:true
		telephone maxSize:20
		fax maxSize:20
		email email:true
		url maxSize:100
    }
	
	String toString() {
		"${id} ${title} ${firstName} ${lastName}"
	}
}
