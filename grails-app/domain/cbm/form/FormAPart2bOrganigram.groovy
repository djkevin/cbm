package cbm.form

class FormAPart2bOrganigram {

    static belongsTo = [FormAPart2b]

    String fileName
    String contentType
    byte[] organisationalStructureDiagram
    String organigramDescription //if no image is submitted

    FormAPart2b formAPart2b

    static constraints = {
        organisationalStructureDiagram nullable: true, size: 0..1024 * 1024 * 5 //5MB
        organigramDescription maxSize: 65000, nullable: true
    }

    static mapping = {
        organigramDescription type: 'text'
    }

    String toString(){
        "organisationalStructureDiagram linked to ${formAPart2b}"
    }

}
