package cbm.form

class FormAPart2bOrganigram {

    static belongsTo = [FormAPart2b]

    String fileName
    String contentType
    byte[] organisationalStructureDiagram

    FormAPart2b formAPart2b

    static constraints = {
        organisationalStructureDiagram nullable: true, size: 0..1024 * 1024 * 5 //5MB
    }

    String toString(){
        "organisationalStructureDiagram belonging to "+formAPart2b
    }
}
