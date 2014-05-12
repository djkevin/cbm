import cbm.usermgt.AdminUser
import cbm.usermgt.SecRole
import cbm.usermgt.SecUserSecRole

/**
 * Created with IntelliJ IDEA.
 * User: jutliah
 * Date: 3/26/14
 * Time: 11:18 AM
 * To change this template use File | Settings | File Templates.
 */

fixture{
    /*Create admin user*/
    userAdmin(AdminUser) {
        username = "admin"
        password = "admin"
    }

    roleAdmin(SecRole) {
        authority = 'ROLE_ADMIN'
    }

    userRoleAdmin(SecUserSecRole) {
        secUser = userAdmin
        secRole = roleAdmin
    }

}
