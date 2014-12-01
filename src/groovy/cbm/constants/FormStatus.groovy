package cbm.constants


public enum FormStatus {

    DRAFT, COMPLETED

    @Delegate MessageSourceResolvableUtil messageSourceResolvableUtil= new MessageSourceResolvableUtil(this)
}
