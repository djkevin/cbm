package cbm.constants

import cbm.MessageSourceResolvableUtil

/**
 * Created with IntelliJ IDEA.
 * User: jutliah
 * Date: 5/1/14
 * Time: 10:33 AM
 * To change this template use File | Settings | File Templates.
 */
public enum ReportStatus {
    DRAFT, SUBMITTED

    @Delegate MessageSourceResolvableUtil messageSourceResolvableUtil= new MessageSourceResolvableUtil(this)

}