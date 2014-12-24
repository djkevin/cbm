package cbm

import cbm.constants.FormStatus
import cbm.constants.Visibility
import cbm.form.FormF
import cbm.report.Report
import grails.test.mixin.TestFor
import spock.lang.Unroll

/**
 * See the API for {@link grails.test.mixin.domain.DomainClassUnitTestMixin} for usage instructions
 */
@TestFor(FormF)
class FormFSpec extends ConstraintUnitSpec {
    def setup() {
        mockForConstraintsTests(FormF, [new FormF()])
    }

    def cleanup() {
    }
//TODO fix this
 /*   @Unroll("offensiveActivity '#offensiveActivity' should result in '#error'")
    def "activity has to have a corresponding period"() {
        when:
        domain.offensiveActivity = offensiveActivity
        domain.formStatus = FormStatus.DRAFT
        domain.visibility = Visibility.PUBLIC
        domain.report = new Report()
        domain.entryIntoForceOfConvention = new Date()

        then:
        validateConstraints(domain, 'offensiveActivity', error)

        where:
        offensiveActivity                   || error
        null                                || 'nullable'
        activityWithoutAPeriod()            || 'nullable'
*//*        activityWithPeriodWithoutASummary() || 'default.blank.message'
        activityWithAllFilled()             || 'valid'
        emptyActivity()                     || 'valid'*//*

    }

    PastBiologicalRnDActivity activityWithoutAPeriod() {
        return new PastBiologicalRnDActivity(pastBiologicalActivity: true, periodOfActivity: '', summaryOfRnDActivities: '')
    }

    PastBiologicalRnDActivity activityWithPeriodWithoutASummary() {
        return new PastBiologicalRnDActivity(pastBiologicalActivity: true, periodOfActivity: 'test', summaryOfRnDActivities: '')
    }

    PastBiologicalRnDActivity activityWithAllFilled() {
        return new PastBiologicalRnDActivity(pastBiologicalActivity: true, periodOfActivity: 'all', summaryOfRnDActivities: 'test2')
    }

    PastBiologicalRnDActivity emptyActivity() {
        return new PastBiologicalRnDActivity()
    }*/


}
