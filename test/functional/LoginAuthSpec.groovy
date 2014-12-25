import geb.spock.GebReportingSpec
import spock.lang.Stepwise

@Stepwise
class LoginAuthSpec extends GebReportingSpec {

    String getBaseUrl() { "http://localhost:8080/" }

    File getReportDir() { new File("target/reports/geb") }

    def "invalid login"() {
        given: "I am at the login page"
        to LoginPage

        when: "I am entering invalid password"
        loginForm.j_username = "admin"
        loginForm.j_password = "ioguffwf"
        loginButton.click()

        then: "I am being redirected to the login page, the password I entered is wrong"
        at LoginPage
        !loginForm.j_username
        !loginForm.j_password
        $().text().contains("Sorry, we were not able to find a user with that username and password")
    }

    def "cbm editor login"() {
        given : "I am at the login page"
        to LoginPage

        when: "I am entering valid username and password"
        loginForm.j_username = "cheEditor"
        loginForm.j_password = "chepass"
        loginButton.click()

        then: "I am being redirected to the index page"
        at ReportListPage
        $().text().contains("You are logged in as")
    }

/*    def "display report list"() {
        given : "I am at the index page"
        to IndexPage

        when: "I access the report list"
        reportListButton.click()

        then: "I am being redirected to the report list page"
        at ReportListPage
        $().text().contains("Reports in progress")
    }*/

    def "change language to French"() {
        given : "I am at the index page"
        to ReportListPage

        when: "I change language to french"
        frenchLangButton.click()

        then: "I am being redirected to the report list page"
        at ReportListPage
        $().text().contains("Vous êtes connecté en tant que")
    }

/*    def "test index page title"() {
        when : "I am at the index page"
        to IndexPage

        then: "I am being redirected to the report list page"
        js."document.title" == "CBM index"
    }*/
}