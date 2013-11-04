class BootStrap {

	def fixtureLoader
	
    def init = { servletContext ->
		
		println "inside init"
			
		environments{
			development {
				
				fixtureLoader.load("sampleFormA")
	
			}
		}
		
		
    }
    def destroy = {
		println "inside destroy+"
    }
}
