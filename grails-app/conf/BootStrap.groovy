import cbm.SecRole
import cbm.SecUser
import cbm.SecUserSecRole

class BootStrap {

	def fixtureLoader
	
    def init = { servletContext ->
		
		println "inside init"
			
		environments{
			development {

                //Initialise users and roles
                def adminRole = new SecRole(authority: 'ROLE_ADMIN').save(flush: true)
                def userRole = new SecRole(authority: 'ROLE_USER').save(flush: true)

                def testUser = new SecUser(username: 'me', password: 'password')
                testUser.save(flush: true)

                SecUserSecRole.create testUser, adminRole, true

                assert SecUser.count() == 1
                assert SecRole.count() == 2
                assert SecUserSecRole.count() == 1
				
				fixtureLoader.load("sampleFormA")
	
			}
		}
		
		
    }
    def destroy = {
		println "inside destroy+"
    }
}
