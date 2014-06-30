package cbm

import cbm.report.Report

class SecurityFilters {

    def securityService
    def springSecurityService

    def filters = {
        all(controller: 'form*', action: '*') { //TODO implement similar filter for other domain classes, e.g Report, StateParty, NationalContact etc
            before = {
                def user = springSecurityService.getCurrentUser()

             //   println "domain name is " + controllerName + ", id is: " + params.long('id')

                String domainClassName = "cbm.form." + capitalize(controllerName)
                Class clazz = grailsApplication.getDomainClass(domainClassName).clazz

                def report

                if (params.id){
                    def form = clazz?.findById(params.id)
                    report = form?.getReport()
                }else if(params['report.id']){
                    report = Report.get(params.long('report.id'))
                }

                if (report && user) {
                    boolean canView = securityService.canView(user, report)

                    if (securityService.canView(user, report)) {
                        return true;
                    }
                }
                //returning false only displays a blank page, so feeding 404 to response instead
                response.sendError(404)

            }
            after = { Map model ->

            }
            afterView = { Exception e ->

            }
        }
    }

    def capitalize(s) { //TODO remove and replace by name
        s[0].toUpperCase() + s[1..-1]
    }
}
