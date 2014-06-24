package cbm.form

class FormAPart1ContainmentUnit{

    //static auditable = true   Commented because of flush() error - See ticket #33
    static belongsTo = [FormAPart1a]
    String bioSafetyLevel
    String unitType
    Integer unitSize
    String comment
    FormAPart1a facility

    Date created = new Date() // For ordering list


    String toString() {
        return "${id} ${bioSafetyLevel} ${unitType} ${unitSize} ${comment}"
    }

    static constraints = {
        bioSafetyLevel blank: false, inList: ["BSL4", "Enhanced BSL3"]    //TODO i18n
        unitType blank: false, inList: ["laboratory", "treatment module"]
        unitSize blank: false
        comment maxSize: 200
        facility nullable: false
    }

}
