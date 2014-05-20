package cbm

class DeclarationOfMeasures {

    String legislation
    String regulation
    String otherMeasures
    String amendedSinceLastYear

    static transients = ['declaration']

    //TODO change inLists to enum
    static constraints = {
        legislation inList: ["Yes", "No", "Unknown"]
        regulation inList: ["Yes", "No", "Unknown"]
        otherMeasures inList: ["Yes", "No", "Unknown"]
        amendedSinceLastYear inList: ["Yes", "No", "Unknown"]
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
