import cbm.admin.StateParty

class StatePartyBootStrap {

    // Loaded after CountryBootstrap so that each State Party can be associated to a Country

    def fixtureLoader

    def init = { servletContext ->

        println "running statePartyBootstrap init..."

        environments{
            development {



                if (!StateParty.count()){
                    println "loading statePartyData with countries..."
                    fixtureLoader.load("stateParties")
                    print "done."
                    println "loading adminData..."
                    fixtureLoader.load("adminData")
                    print "done."
                }

//				fixtureLoader.load("sampleData")



            }

            test {

                if (!StateParty.count()){
                    println "loading statePartyData with countries..."
                    fixtureLoader.load("stateParties")
                    print "done."
                    println "loading adminData..."
                    fixtureLoader.load("adminData")
                    print "done."
                }
                //fixtureLoader.load("sampleData")
            }
        }

        println "DONE StateParty bootstrap init."

    }
    def destroy = {
        println "inside destroy"
    }
}
