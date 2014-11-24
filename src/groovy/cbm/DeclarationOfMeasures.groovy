package cbm

class DeclarationOfMeasures {

    String legislation
    String regulation
    String otherMeasures
    String amendedSinceLastYear

    static transients = ['declaration']

    //TODO change inLists to enum
    static constraints = {
        legislation inList: ["No", "Yes", "Unknown"]
        regulation inList: ["No", "Yes", "Unknown"]
        otherMeasures inList: ["No", "Yes", "Unknown"]
        amendedSinceLastYear inList: ["No", "Yes", "Unknown"]
    }

    String toString() {
        "${legislation} ${regulation} ${otherMeasures} ${amendedSinceLastYear}"
    }

    /**
     *  Verifies whether a declaration has been made
     * @return True if at least one Yes filled
     */
    boolean hasDeclaration() {
        (legislation?.equalsIgnoreCase("Yes") || regulation?.equalsIgnoreCase("Yes") && otherMeasures?.equalsIgnoreCase("Yes") && amendedSinceLastYear?.equalsIgnoreCase("Yes"))
    }


}
