package cbm

class AuditLog {

    String actor
    String className
    Date dateCreated
    String eventName
    Date lastUpdated
    String newValue
    String oldValue
    String persistedObjectId
    Long persistedObjectVersion
    String propertyName
    String uri

    static mapping = {
        version false
    }

    static constraints = {
        actor nullable: true
        className nullable: true
        eventName nullable: true
        newValue nullable: true
        oldValue nullable: true
        persistedObjectId nullable: true
        persistedObjectVersion nullable: true
        propertyName nullable: true
        uri nullable: true
    }
}