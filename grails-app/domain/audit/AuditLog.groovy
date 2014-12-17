package audit

/**
 * Reverse-engineered domain class from the AuditLog plugin.
 * This class is required to show audit log info at the bottom in the various views (usually the "show" views).
 *
 * Certain columns of the mapped table need indexes as the audit log may grow with time.
 * See related comments below and manually create indexes (at the DB level with SQL) for these columns.
 */
class AuditLog {

    String actor
    String className	/* needs to be indexed */
    Date dateCreated
    String eventName
    Date lastUpdated	/* needs to be indexed */
    String newValue
    String oldValue
    String persistedObjectId	/* needs to be indexed */
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