grails.servlet.version = "3.0" // Change depending on target container compliance (2.5 or 3.0)
grails.project.class.dir = "target/classes"
grails.project.test.class.dir = "target/test-classes"
grails.project.test.reports.dir = "target/test-reports"
grails.project.work.dir = "target/work"
grails.project.target.level = 1.6
grails.project.source.level = 1.6
//grails.project.war.file = "target/${appName}-${appVersion}.war"
grails.project.war.osgi.headers = false

grails.project.fork = [
    // configure settings for compilation JVM, note that if you alter the Groovy version forked compilation is required
    //  compile: [maxMemory: 256, minMemory: 64, debug: false, maxPerm: 256, daemon:true],

    // configure settings for the test-app JVM, uses the daemon by default
    test: [maxMemory: 768, minMemory: 64, debug: false, maxPerm: 256, daemon:true],
    // configure settings for the run-app JVM
    run: [maxMemory: 768, minMemory: 64, debug: false, maxPerm: 256, forkReserve:false],
    // configure settings for the run-war JVM
    war: [maxMemory: 768, minMemory: 64, debug: false, maxPerm: 256, forkReserve:false],
    // configure settings for the Console UI JVM
    console: [maxMemory: 768, minMemory: 64, debug: false, maxPerm: 256]
]

grails.project.dependency.resolver = "maven" // or ivy or maven
grails.project.dependency.resolution = {
    // inherit Grails' default dependencies
    inherits("global") {
        // specify dependency exclusions here; for example, uncomment this to disable ehcache:
        // excludes 'ehcache'
    }
    log "error" // log level of Ivy resolver, either 'error', 'warn', 'info', 'debug' or 'verbose'
    checksums true // Whether to verify checksums on resolve
    legacyResolve false // whether to do a secondary resolve on plugin installation, not advised and here for backwards compatibility

    def gebVersion = "0.9.2"
    def phantomJSVersion = "1.0.4"
    def webdriverVersion = "2.40.0"

    repositories {
        inherits true // Whether to inherit repository definitions from plugins

        grailsPlugins()
        grailsHome()
        mavenLocal()
        grailsCentral()
        mavenCentral()
		mavenRepo 'http://repo.spring.io/milestone' // fix issue with spring security core plugin download, applies to ggts 3.4.0 and Linux (at least).

        // For Geb snapshot
//        mavenRepo "http://oss.sonatype.org/content/repositories/snapshots"

        // uncomment these (or add new ones) to enable remote dependency resolution from public Maven repositories
        //mavenRepo "http://repository.codehaus.org"
        //mavenRepo "http://download.java.net/maven/2/"
        //mavenRepo "http://repository.jboss.com/maven2/"

    }

    dependencies {
        test "org.gebish:geb-junit3:${gebVersion}"
        test "org.gebish:geb-junit4:${gebVersion}"
        test "org.gebish:geb-spock:${gebVersion}"

        test "org.seleniumhq.selenium:selenium-support:${webdriverVersion}"
        test "org.seleniumhq.selenium:selenium-chrome-driver:${webdriverVersion}"
        test "org.seleniumhq.selenium:selenium-firefox-driver:${webdriverVersion}"
        test "org.seleniumhq.selenium:selenium-ie-driver:${webdriverVersion}"

        test("com.github.detro.ghostdriver:phantomjsdriver:${phantomJSVersion}") {
            transitive = false
        }

        // specify dependencies here under either 'build', 'compile', 'runtime', 'test' or 'provided' scopes e.g.
        runtime 'mysql:mysql-connector-java:5.1.24'

        // This library is required by the rendering plugin when running on Tomcat.
        // The version needs to correspond to the version included in Grails.
        runtime 'org.springframework:spring-test:3.1.2.RELEASE'
    }

    plugins {
        // plugins for the build system only
        build ":tomcat:7.0.50"


        // plugins for the compile step
        compile ":scaffolding:2.0.1"
        compile ':cache:1.1.1'
		compile ':fixtures:1.2'
        compile ":audit-logging:1.0.1"
        compile ':spring-security-core:2.0-RC2'
        compile ":db-reverse-engineer:0.5"
        compile ":jquery:1.11.1"
        compile ":jquery-ui:1.10.3"

//        compile "org.springframework:spring-test:3.2.6.RELEASE"
        compile ":build-test-data:2.2.2"
        compile ":rendering:0.4.4"

        // plugins needed at runtime but not for compilation
        runtime ":hibernate:3.6.10.7" // or ":hibernate4:4.1.11.2"
        runtime ":database-migration:1.3.5"


        runtime ":resources:1.2.7"
        runtime ":joda-time:1.4"


        test ":remote-control:1.4"
        test ":geb:${gebVersion}"
        test ":code-coverage:2.0.3-3" //cobertura plugin

        //test ":geb:$gebVersion"  Does not work - conflicts with unit tests

        // Uncomment these (or add new ones) to enable additional resources capabilities
        //runtime ":zipped-resources:1.0.1"
        //runtime ":cached-resources:1.1"
        //runtime ":yui-minify-resources:0.1.5"
    }
}
