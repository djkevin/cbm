import cbm.admin.StateParty


class StatePartyBootStrap {

    // Loaded after CountryBootstrap so that each State Party can be associated to a Country

    def fixtureLoader

    def init = { servletContext ->

        log.info  "Running BootstrapStateParty init..."

        environments{
			
            development {
                if (!StateParty.count()){
                    println "loading statePartyData with countries..."
                    fixtureLoader.load("stateParties")
                    println "done."
                }
            }

            test {
                if (!StateParty.count()){
                    println "loading statePartyData with countries..."
                    fixtureLoader.load("stateParties")
                    println "done."					
                }
            }
        }

        log.info "DONE StateParty bootstrap init."

    }
    def destroy = {
        log.info "Running destroy BootStrapStateParty"
    }
}
