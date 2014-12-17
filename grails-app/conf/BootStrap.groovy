import cbm.admin.Country
import cbm.admin.StateParty
import cbm.usermgt.SecRole
import cbm.usermgt.User
import org.springframework.util.StringUtils

class BootStrap {

	def fixtureLoader
    def grailsApplication
    def messageSource
	
    def init = { servletContext ->

        /*  Adds a getErrorStrings method to all domain classes  - renders friendlier error messages
            Usage: domainClass.errorStrings.fieldName   instead of domainClass.errors.toString
            See pg 76 - Programming Grails
         */
        for (dc in grailsApplication.domainClasses) {
            dc.metaClass.getErrorStrings = { Locale locale = Locale.default ->
                def stringsByField = [:].withDefault { [] }
                for (fieldErrors in delegate.errors) {
                    for (error in fieldErrors.allErrors) {
                        String message = messageSource.getMessage(error, locale)
                        stringsByField[error.field] << message
                    }
                }
                stringsByField
            }
        }
		
		log.info "Running bootstrap init..."
		
		environments{
			
			development {
				loadCountries()
				loadStateParties()
				loadRoles()
				loadUsers()				
			}
			
			test {
				loadCountries()
				loadStateParties()
				loadRoles()
				loadUsers()				
			}
			
			production {
				loadCountries()
				loadStateParties()
				loadRoles()				
			}
		}
		
		log.info "DONE bootstrap init."
				
    }
	
    def destroy = {
		log.info "Running destroy Bootstrap"
    }
	
	/**
	 * Create country data if no countries exist already in the DB.
	 */ 	
	def loadCountries() {
		log.info "Loading countries..."
		
		// if countries do not exist, create them FOR ALL ENVIRONMENTS!
		if (!Country.count()) {
			log.info " no countries in db currently, loading from file..."

			// Refer to http://groovy.codehaus.org/api/groovy/util/CharsetToolkit.html to get the correct charset
			// data/countries relative to  conf directory
			Reader reader = new InputStreamReader(getClass().getResourceAsStream('data/countries.txt'), "UTF-16LE")

			def lineNum = 0

			reader.eachLine {
				if (lineNum > 0) {

					def origLine = it.toString()
					//Cleanup articles, special chars
					def cleanedLine = it
							.replaceAll(~/\[masc\.\]/, '')
							.replaceAll(~/\[fém\.\]/, '')
							.replaceAll(~/\(the\)/, '')
							.replaceAll(~/\(le\)/, '')
							.replaceAll(~/\(la\)/, '')
							.replaceAll(~/\(les\)/, '')
							.replaceAll(~/\(los\)/, '')
							.replaceAll(~/\(las\)/, '')
							.replaceAll(~/\(el\)/, '')
							.replaceAll(~/\(l'\)/, '')
							.replaceAll(~/\*/, '')

					def cols = cleanedLine.split(',')

					if (cols.size() != 14) {
						println "orig: " + origLine
						println "clean: " + cleanedLine
						println "---------------------------------------------------------------------------------------------------------------"
					}

					def country = new Country(
							iso2: cols[0].trim(),
							iso3: cols[1].trim(),
							shortNameEn: cols[2].trim(),
							shortNameFr: StringUtils.capitalize(cols[3].trim()),
							shortNameEs: StringUtils.capitalize(cols[4].trim()),
							shortNameRu: cols[5].trim(),
							shortNameCh: cols[6].trim(),
							shortNameAr: cols[7].trim(),
							formalNameEn: StringUtils.capitalize(cols[8].trim()),
							formalNameFr: StringUtils.capitalize(cols[9].trim()),
							formalNameEs: StringUtils.capitalize(cols[10].trim()),
							formalNameRu: cols[11].trim(),
							formalNameCh: cols[12].trim(),
							formalNameAr: cols[13].trim()
					).save(flush: true)
					//println "---------------------------------------------------------------------------------------------------------------"
				}
				lineNum++
			}
		}

		log.info "DONE loading Countries."
	}
	
	/**
	 * Create state party data if no state parties exist already in the DB.	 
	 * @return
	 */
	def loadStateParties() {
		log.info  "loading State Parties..."
		
		if (!StateParty.count()){
			println "loading statePartyData with countries..."
			fixtureLoader.load("stateParties")
			println "done."
		}

		if (!StateParty.count()){
			println "loading statePartyData with countries..."
			fixtureLoader.load("stateParties")
			println "done."
		}

		log.info "DONE State Parties loading."
	}
	
	/**
	 * Create roles, if no roles exist already.
	 * @return
	 */
	def loadRoles() {
		log.info "Loading roles..."
		
		if (!SecRole.count()) { // should check if every individual ROLE exists or not and create it if not!
			println "loading roleData..."
			fixtureLoader.load("roleData")
			println "done."
		}
		
		log.info "DONE loading roles."		
	}
	
	/**
	 * Create users, if no users exist already. SHOULD ONLY BE USED FOR DEVELOPMENT OR TESTING!
	 * @return
	 */
	def loadUsers() {
		log.info "Loading users..."
					
		if (!User.count()) { // not good if we want to add more users at bootstrap, without deleting the existing ones.
			println "loading userData..."
			fixtureLoader.load("userData")
			println "done."
		}			
		
		log.info "DONE loading users."
	}
	
}
