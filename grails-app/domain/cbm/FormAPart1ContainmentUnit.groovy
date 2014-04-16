package cbm

class FormAPart1ContainmentUnit {

    static auditable = true
    static belongsTo = [FormAPart1a]
    String bioSafetyLevel
    String unitType
    Integer unitSize
    String comment
    FormAPart1a facility


    String toString() {
        return "${id} ${bioSafetyLevel} ${unitType} ${unitSize} ${comment}"
    }



    static constraints = {
        bioSafetyLevel inList: ["BSL4", "Enhanced BSL3"]
        unitType inList: ["laboratory", "treatment module"]
        unitSize blank: false
        comment maxSize: 200
        facility nullable: false
    }
}
