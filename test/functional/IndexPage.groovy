import geb.Page

class IndexPage extends Page {

    static url = "/cbm"

    static at = { title == "CBM index" }

    static content = {
        reportListButton(to: ReportListPage) { $("a", text: "User index page") }
        frenchLangButton(to:IndexPage){$("a", class:"home", text: "Français")}




    }
}