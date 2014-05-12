package cbm.form

import cbm.BaseForm
import cbm.report.Report

class FormB extends BaseForm {

    static belongsTo = [Report]

    String eventName
    String eventCategory
    Date eventDate

    String timeOfOutbreak
    String locationAffected
    String typeOfDisease
    String sourceOfDisease
    String possibleCause
    String mainCharacteristics
//    String detailedSymptoms
    String symptomRespiratory
    String symptomCirculatory
    String symptomNeurologicalBehavioral
    String symptomIntestinal
    String symptomDermatological
    String symptomNephrological
    String symptomOther
//    String deviationFromNormalPattern
    String deviationType
    String deviationPlace
    String deviationTime
    String deviationSymptoms
    String deviationVirulence
    String deviationDrugResistance
    String deviationAgentDiffToDiagnose
    String deviationPresenceOfUnusualVectors
    String deviationOther

    String numOfPrimaryCases
    String numOfTotalCases
    String numDeaths
    String developmentOfOutbreak
    String measuresTaken
    String additionalInfo

    Report report

    static constraints = {
        eventName blank: false, maxSize: 50
        eventCategory inList: ["Human", "Plant", "Animal"]
        eventDate()  //TODO future date validator
        timeOfOutbreak maxSize: 500, nullable: true
        locationAffected maxSize: 500, nullable: true
        typeOfDisease maxSize: 500, nullable: true
        sourceOfDisease maxSize: 500, nullable: true
        possibleCause maxSize: 500, nullable: true
        mainCharacteristics maxSize: 500, nullable: true
//        detailedSymptoms maxSize: 500, nullable: true
        symptomRespiratory maxSize: 100, nullable: true
        symptomCirculatory maxSize: 100, nullable: true
        symptomNeurologicalBehavioral maxSize: 100, nullable: true
        symptomIntestinal maxSize: 100, nullable: true
        symptomDermatological maxSize: 100, nullable: true
        symptomNephrological maxSize: 100, nullable: true
        symptomOther maxSize: 100, nullable: true
//        deviationFromNormalPattern maxSize: 500, nullable: true
        deviationType maxSize: 100, nullable: true
        deviationPlace maxSize: 100, nullable: true
        deviationTime maxSize: 100, nullable: true
        deviationSymptoms maxSize: 100, nullable: true
        deviationVirulence maxSize: 100, nullable: true
        deviationDrugResistance maxSize: 100, nullable: true
        deviationAgentDiffToDiagnose maxSize: 100, nullable: true
        deviationPresenceOfUnusualVectors maxSize: 100, nullable: true
        deviationOther maxSize: 100, nullable: true
        numOfPrimaryCases maxSize: 500, nullable: true
        numOfTotalCases maxSize: 500, nullable: true
        numDeaths maxSize: 500, nullable: true
        developmentOfOutbreak maxSize: 500, nullable: true
        measuresTaken maxSize: 500, nullable: true
        additionalInfo maxSize: 5000, nullable: true
    }

    String toString() {
        eventName
    }
}
