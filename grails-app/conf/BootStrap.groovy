import cbm.admin.StateParty
import cbm.usermgt.SecRole
import cbm.usermgt.SecUser
import cbm.usermgt.SecUserSecRole
import cbm.usermgt.User

class BootStrap {

	def fixtureLoader
	
    def init = { servletContext ->
		
		println "running bootstrap init..."
			
		environments{
			development {

                //Initialise users and roles
                /**   Code moved to sampleFormA
                def adminRole = new SecRole(authority: 'ROLE_ADMIN').save(flush: true)
                def userRole = new SecRole(authority: 'ROLE_USER').save(flush: true)

                def testUser = new SecUser(username: 'user', password: 'password')
                def adminUser = new SecUser(username: 'admin', password: 'password')

                testUser.save(flush: true)
                adminUser.save(flush: true)

                SecUserSecRole.create testUser, userRole, true
                SecUserSecRole.create adminUser, adminRole, true

                assert SecUser.count() == 2
                assert SecRole.count() == 2
                assert SecUserSecRole.count() == 2
				 */

 /*               if (!StateParty.count()){
                    println "loading statePartyData..."
                    fixtureLoader.load("statePartyDataWCountries")
                    print "done"
                    println "loading adminData..."
                    fixtureLoader.load("adminData")
                    print "done"
                }*/

//				fixtureLoader.load("sampleData")


	
			}
			
			test {
			//fixtureLoader.load("sampleData")
			}
		}
		
		println "DONE bootstrap init."
				
    }
    def destroy = {
		println "inside destroy+"
    }
}
