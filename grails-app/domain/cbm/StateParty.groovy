package cbm

import cbm.report.Report
import org.joda.time.LocalDate

class StateParty {

    static hasMany = [report: Report, nationalContact: NationalContact]

    Country country
    Date accessionRatification

    String toString() {
        return "${country}"
    }

    static constraints = {
        country nullable: false, unique: true
        accessionRatification validator: dateValidator
    }

    static dateValidator = { date ->
        if (date > new Date()) {
            return "date.is.in.future"
        }

        if (date < new LocalDate('1972-01-01').toDate()) { //Date BWC treaty was open for signature
            return "date.is.before.min"
        }
    }
}
