package cbm

import grails.validation.Validateable

@Validateable
class PastBiologicalRnDActivity {

    Boolean pastBiologicalActivity
    String periodOfActivity
    String summaryOfRnDActivities

    static constraints = {
        pastBiologicalActivity()
        periodOfActivity maxSize: 250, blank: true, nullable: true
        summaryOfRnDActivities maxSize: 10000, blank: true, nullable: true  //TODO check formF validation if we change maxSize constraint
    }

    String toString() {
        return "${pastBiologicalActivity}_${periodOfActivity}"
    }

}
