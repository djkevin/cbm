package cbm

class Address {
	
	String street
	String town
	String postCode
	Country country

    static constraints = {
		street maxSize:200
		town maxSize:100
		postCode maxSize:10
		country blank:false
    }
	
	String toString(){
		"${street} ${town} ${postCode} ${country}"
	}
}