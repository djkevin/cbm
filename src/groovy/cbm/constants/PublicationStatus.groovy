package cbm.constants

public enum PublicationStatus {
    NOTPUBLISHED, PUBLISHED

    @Delegate MessageSourceResolvableUtil messageSourceResolvableUtil= new MessageSourceResolvableUtil(this)
}

