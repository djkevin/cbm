import geb.Page

class ReportListPage extends Page {

    static url = "/cbm/report/index"

    static at = { title == "Report List" }

    static content = {
        frenchLangButton(to:IndexPage){$("a", class:"home", text: "Français")}
        newReportButton(to:ReportCreatePage){ $("a", text: "New Report") }
        viewAllPublishedReportsButton(to:ReportCreatePage){ $("a", text: "View All Published Reports") }

    }
}