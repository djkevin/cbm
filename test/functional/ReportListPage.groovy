import geb.Page

class ReportListPage extends Page {

    static url = "/report/index"

    static at = { title == "Report List" }

    static content = {
        newReportButton(to:ReportCreatePage){ $("a", text: "New Report") }
        viewAllPublishedReportsButton(to:ReportCreatePage){ $("a", text: "View All Published Reports") }

    }
}