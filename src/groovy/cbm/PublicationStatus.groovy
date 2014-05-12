package cbm



/**
 * Created with IntelliJ IDEA.
 * User: jutliah
 * Date: 5/1/14
 * Time: 3:57 PM
 * To change this template use File | Settings | File Templates.
 */

public enum PublicationStatus {
    NOTPUBLISHED, PUBLISHED

    @Delegate MessageSourceResolvableUtil messageSourceResolvableUtil= new MessageSourceResolvableUtil(this)
}
