package cbm

class Address {

    String street1
    String street2
    String town
    String state
    String postCode
   // cbm.Country country

    static constraints = {
        street1 maxSize: 100, nullable: true
        street2 maxSize: 100, nullable: true
        town maxSize: 50, nullable: true
        state maxSize: 50, nullable: true
        postCode maxSize: 10, nullable: true
     //   country blank: false
    }

    String toString() {
        "${street1}, ${street2}, ${town}, ${state}, ${postCode}"
    }
}