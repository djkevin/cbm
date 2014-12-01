import org.springframework.security.access.vote.RoleVoter;

import cbm.admin.Country
import cbm.admin.StateParty
import cbm.usermgt.AdminUser
import cbm.usermgt.SecRole
import cbm.usermgt.SecUserSecRole
import cbm.usermgt.User

/**
 * Create various users and grant them roles.
 * Should be used for DEV or TEST environments only.
 * In PROD users should be created through SQL scripts 
 * or (if it exists) through the admin interface of the application.  
 */
fixture {

	// ------------- the admin user
	
	userAdmin(AdminUser) {
		username = "admin"
		password = "adminpass"
	}

	userRoleAdmin(SecUserSecRole) {
		secUser = userAdmin
		secRole = SecRole.findByAuthority('ROLE_ADMIN')
	}
	
	// ------------- role references (here we do not create these roles, only retrieve them for reference.
	def roleViewer = SecRole.findByAuthority('ROLE_VIEWER')
	def roleEditor = SecRole.findByAuthority('ROLE_EDITOR')
	def roleSubmitter = SecRole.findByAuthority('ROLE_SUBMITTER')	
	
	// ------------- users for some state parties, each user with a specific role.

	cheViewer(User) { 
		username="cheViewer"
		password="chepass"
		stateParty = StateParty.findByCountry(Country.findByIso3("CHE"))		
	}
	cheEditor(User) {
		username="cheEditor"
		password="chepass"
		stateParty = StateParty.findByCountry(Country.findByIso3("CHE"))
	}
	cheSubmitter(User) {
		username="cheSubmitter"
		password="chepass"
		stateParty = StateParty.findByCountry(Country.findByIso3("CHE"))
	}

	cheViewerRole(SecUserSecRole) {
		secUser = cheViewer
		secRole = roleViewer
	}
	cheEditorRole(SecUserSecRole) {
		secUser = cheEditor
		secRole = roleEditor
	}
	cheSubmitterRole(SecUserSecRole) {
		secUser = cheSubmitter
		secRole = roleSubmitter
	}
	
	// -------------- users for some state parties, each user with all roles except admin role.
	
	user15(User) {
		username = "bel"
		password = "Sunning Bushings"
		stateParty = StateParty.findByCountry(Country.findByIso3("BEL"))
	}  	
	user145(User) {
		username = "swe"
		password = "Rationalizing Trustfulness"
		stateParty = StateParty.findByCountry(Country.findByIso3("SWE"))
	}
	user146(User) {
		username = "che"
		password = "Capitalising Immunology"
		stateParty = StateParty.findByCountry(Country.findByIso3("CHE"))
	}    
	user160(User) {
		username = "gbr"
		password = "Compared Jacaranda"
		stateParty = StateParty.findByCountry(Country.findByIso3("GBR"))
	}
	user161(User) {
		username = "usa"
		password = "Kickstarting Limerick"
		stateParty = StateParty.findByCountry(Country.findByIso3("USA"))
	}
	user162(User) {
		username = "ury"
		password = "Imagined Warranties"
		stateParty = StateParty.findByCountry(Country.findByIso3("URY"))
	} 	

	/* SWE roles */
    userRoleSWEviewer(SecUserSecRole) {
        secUser = user145
        secRole = roleViewer
    }
	userRoleSWEeditor(SecUserSecRole) {
		secUser = user145
		secRole = roleEditor
	}
	userRoleSWEsubmitter(SecUserSecRole) {
		secUser = user145
		secRole = roleSubmitter
	}
	
	/* US roles */
    userRoleUSviewer(SecUserSecRole) {
        secUser = user161
        secRole = roleViewer
    }
	userRoleUSeditor(SecUserSecRole) {
		secUser = user161
		secRole = roleEditor
	}
	userRoleUSsubmitter(SecUserSecRole) {
		secUser = user161
		secRole = roleSubmitter
	}
	
	/* UK roles */
    userRoleUKviewer(SecUserSecRole) {
        secUser = user160
        secRole = roleViewer
    }
	userRoleUKeditor(SecUserSecRole) {
		secUser = user160
		secRole = roleEditor
	}
	userRoleUKsubmitter(SecUserSecRole) {
		secUser = user160
		secRole = roleSubmitter
	}

	/* 162 roles */
    userRole162viewer(SecUserSecRole) {
        secUser = user162
        secRole = roleViewer
    }
	userRole162editor(SecUserSecRole) {
		secUser = user162
		secRole = roleEditor
	}
	userRole162submitter(SecUserSecRole) {
		secUser = user162
		secRole = roleSubmitter
	}
	
	/* BEL roles */
    userRoleBELviewer(SecUserSecRole) {
        secUser = user15
        secRole = roleViewer
    }
	userRoleBELeditor(SecUserSecRole) {
		secUser = user15
		secRole = roleEditor
	}
	userRoleBELsubmitter(SecUserSecRole) {
		secUser = user15
		secRole = roleSubmitter
	}
	
	/* CHE roles*/
    userRoleCHEviewer(SecUserSecRole) {
        secUser = user146
        secRole = roleViewer
    }
	userRoleCHEeditor(SecUserSecRole) {
		secUser = user146
		secRole = roleEditor
	}
	userRoleCHEsubmitter(SecUserSecRole) {
		secUser = user146
		secRole = roleSubmitter
	}

}
