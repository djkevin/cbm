/*
* Override local configurations here, and do not commit to subversion. See grails.config.locations in Config.groovy to edit
* Grails applies configs in the following order: grails.config.default.location >> Config.groovy >> grails.config.locations
* Top level configs are overridden by environment-specific configs
* */

environments {

    development {
        dataSource {
            dbCreate = "update" // one of 'create', 'create-drop', 'update', 'validate', ''
            url = "jdbc:h2:~/data/devCBM"
            //url = "jdbc:h2:../cbm.data/devCBM"
            pooled = true
            jmxExport = true
            driverClassName = "org.h2.Driver"
            username = "sa"
            password = ""
        }
    }

    test {
        dataSource {
            dbCreate = "update" // one of 'create', 'create-drop', 'update', 'validate', ''
            url = "jdbc:h2:mem:testDb"
            pooled = true
            jmxExport = true
            driverClassName = "org.h2.Driver"
            username = "sa"
            password = ""
        }
    }
}