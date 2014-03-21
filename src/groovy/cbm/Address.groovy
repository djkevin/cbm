package cbm

class Address {
	
	String street1
    String street2
	String town
    String state
	String postCode
	Country country

    static constraints = {
		street1 maxSize:200 ,nullable: true
		street2 maxSize:200 ,nullable: true
		town maxSize:100 ,nullable: true
		state maxSize:100 ,nullable: true
		postCode maxSize:10 ,nullable: true
		country blank:false
    }
	
	String toString(){
		"${street1}, ${street2}, ${town}, ${state}, ${postCode}, ${country}"
	}
}