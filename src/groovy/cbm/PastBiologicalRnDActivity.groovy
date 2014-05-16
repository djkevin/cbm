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
        summaryOfRnDActivities maxSize: 5000, blank: true, nullable: true
    }

    String toString() {
        return "${pastBiologicalActivity}_${periodOfActivity}"
    }

}
