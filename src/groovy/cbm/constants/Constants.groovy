package cbm.constants

/**
 * i18n aware  application constants
 * Needs to be defined in messsages.properties as cbm.constants.EventCategory.HUMAN=Human
 */
public enum EventCategory {
    HUMAN, PLANT, ANIMAL

    @Delegate MessageSourceResolvableUtil messageSourceResolvableUtil= new MessageSourceResolvableUtil(this)

}

public enum Title {

    MR, MRS, DR

    @Delegate MessageSourceResolvableUtil messageSourceResolvableUtil = new MessageSourceResolvableUtil(this)

}
