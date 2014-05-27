import cbm.admin.StateParty

class StatePartyBootStrap {

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
                //fixtureLoader.load("sampleData")
            }
        }

        println "DONE StateParty bootstrap init."

    }
    def destroy = {
        println "inside destroy"
    }
}
