package cbm.constants

public enum ReportStatus {
    DRAFT, SUBMITTED

    @Delegate MessageSourceResolvableUtil messageSourceResolvableUtil= new MessageSourceResolvableUtil(this)

}