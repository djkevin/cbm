package cbm

class FormAPart2a {

    Boolean existingNationalProgrammes
    Report report

    String toString() {
        "${existingNationalProgrammes}"
    }

    static constraints = {
        existingNationalProgrammes widget: 'radio'
    }
}
