import cbm.usermgt.SecRole

/** create application roles */
fixture {

	roleViewer(SecRole) {
        authority = 'ROLE_VIEWER'
    }
	
    roleEditor(SecRole) {
        authority = 'ROLE_EDITOR'
    }
	
	roleSubmitter(SecRole) {
		authority = 'ROLE_SUBMITTER'
	}
	
	roleAdmin(SecRole) {
		authority = 'ROLE_ADMIN'
	}
}
