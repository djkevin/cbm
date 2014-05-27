package cbm.admin

class Country {
    def countryService

    String iso2
    String iso3

    String shortNameEn
    String shortNameFr
    String shortNameEs
    String shortNameRu
    String shortNameCh
    String shortNameAr

    String formalNameEn
    String formalNameFr
    String formalNameEs
    String formalNameRu
    String formalNameCh
    String formalNameAr


    static constraints = {
        iso2 size: 2..2, blank: false, unique: true
        iso3 size: 3..3, blank: false, unique: true

        //From the ISO Country List, maximum chars short/formal = 62
        shortNameEn blank: false, maxSize: 100
        shortNameFr blank: false, maxSize: 100
        shortNameEs blank: false, maxSize: 100
        shortNameRu blank: false, maxSize: 100
        shortNameCh blank: false, maxSize: 100
        shortNameAr blank: false, maxSize: 100

        formalNameEn blank: false, maxSize: 250
        formalNameFr blank: false, maxSize: 250
        formalNameEs blank: false, maxSize: 250
        formalNameRu blank: false, maxSize: 250
        formalNameCh blank: false, maxSize: 250
        formalNameAr blank: false, maxSize: 250
    }

    String toString() {
        return "${shortNameEn}"
    }

    /**
     * Returns the Country name for the current locale
     */
    String getName() {
        countryService.getLocaleName(this)
    }
}
