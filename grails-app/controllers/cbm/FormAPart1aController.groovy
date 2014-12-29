package cbm

import cbm.constants.FormStatus
import cbm.constants.Visibility
import cbm.form.FormAPart1ContainmentUnit
import cbm.form.FormAPart1a
import cbm.report.Report
import grails.converters.JSON
import grails.plugin.springsecurity.annotation.Secured

import java.text.SimpleDateFormat

@Secured(['ROLE_VIEWER', 'ROLE_EDITOR', 'ROLE_SUBMITTER'])
class FormAPart1aController {

    def formAPart1aService

    def reportService

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {

        response.sendError(404)
    }

    def show(FormAPart1a formAPart1Instance) {
        respond formAPart1Instance
    }

    @Secured(['ROLE_EDITOR'])
    def create() {

        FormAPart1a form = new FormAPart1a(params)
        form.formStatus = FormStatus.DRAFT
        form.visibility = Visibility.PUBLIC

        Report r = reportService.getById(params.long('report.id'))

        form.location = new Address()
        form.country = r.getStateParty()?.country

        respond form
    }

    @Secured(['ROLE_EDITOR'])
    def save(FormAPart1a formAPart1Instance) {

        if (formAPart1Instance == null) {
            notFound()
            return
        }

        if (params.containsKey('formAPart1ContainmentUnit')) {
            Set<FormAPart1ContainmentUnit> containmentUnits = getContainmentUnitsFromParams(params, formAPart1Instance)
            formAPart1Instance.formAContainmentUnitList = containmentUnits
        }

        if (formAPart1Instance.hasErrors()) {
            respond formAPart1Instance.errors, view: 'create'
            return
        }


        formAPart1aService.save(formAPart1Instance)

        request.withFormat {
            form {
                flash.message = message(code: 'default.created.message', args: [message(code: 'formAPart1.label', default: 'FormAPart1'), formAPart1Instance.id])
                redirect formAPart1Instance
            }
            '*' { respond formAPart1Instance, [status: CREATED] }
        }
    }

    @Secured(['ROLE_EDITOR'])
    def edit(FormAPart1a formAPart1Instance) {
        respond formAPart1Instance
    }


    /**
     * Extracts containmentUnits (FormAPart1aContainmentUnits) from params
     * Containment units are dynamically added on the UI
     * @param request params
     * @param formAPart1Instance the parent object
     * @return Set of valid Containment Units
     */
    private Set<FormAPart1ContainmentUnit> getContainmentUnitsFromParams(def params, FormAPart1a formAPart1Instance) {

        def unitIds = params.list('formAPart1ContainmentUnitId')
        def bioSafetyLevels = params.list('formAPart1ContainmentUnit.bioSafetyLevel')
        def unitTypes = params.list('formAPart1ContainmentUnit.unitType')
        def unitSizes = params.list('formAPart1ContainmentUnit.unitSize')
        def unitComments = params.list('formAPart1ContainmentUnit.comment')
        def createDates = params.list('formAPart1ContainmentUnit.created')
        Set<FormAPart1ContainmentUnit> containmentUnits = new HashSet<FormAPart1ContainmentUnit>()


        for (int i = 0; i < unitIds.size(); i++) {
            FormAPart1ContainmentUnit formAPart1ContainmentUnit

            if (unitIds[i] == '') {  //new containment unit
                formAPart1ContainmentUnit = new FormAPart1ContainmentUnit()
            } else {

                formAPart1ContainmentUnit = FormAPart1ContainmentUnit.load(unitIds[i])

            }
            formAPart1ContainmentUnit.bioSafetyLevel = bioSafetyLevels[i]
            formAPart1ContainmentUnit.unitType = unitTypes[i]

            String unitSize = unitSizes[i].toString().trim()
            if (unitSize.isInteger()) {
                formAPart1ContainmentUnit.unitSize = unitSize.toInteger()
            } else {
                def a = new Object[1]
                a[0] = unitSize
                formAPart1Instance.errors.reject("formAPart1a.containment.unit.size.error", a, "Unit size error")
            }

            formAPart1ContainmentUnit.comment = unitComments[i]
            formAPart1ContainmentUnit.facility = formAPart1Instance

            String timeStampFormat = "yyyy-MM-dd HH:mm:ss.SSS"
            formAPart1ContainmentUnit.created = new SimpleDateFormat(timeStampFormat).parse(createDates[i]);


            //TODO change to generic error checking at row level
            //TODO use formAPart1ContainmentUnit.validate() method instead of custom integer checks
            if (unitSize.isInteger()) {
                containmentUnits.add(formAPart1ContainmentUnit)
            }
        }
        containmentUnits
    }

    @Secured(['ROLE_EDITOR'])
    def update(FormAPart1a formAPart1Instance) {
        if (formAPart1Instance == null) {
            notFound()
            return
        }

        //Update Containment Units if any
        if (params.containsKey('formAPart1ContainmentUnit')) {
            Set<FormAPart1ContainmentUnit> containmentUnits = getContainmentUnitsFromParams(params, formAPart1Instance)
            formAPart1Instance.getFormAContainmentUnitList().addAll(containmentUnits)
        }

        if (formAPart1Instance.hasErrors()) {
            respond formAPart1Instance.errors, view: 'edit'
            return
        }

        formAPart1aService.save(formAPart1Instance)

        request.withFormat {
            form {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'formAPart1.label', default: 'FormAPart1'), formAPart1Instance.id])
                redirect formAPart1Instance
            }
            '*' { respond formAPart1Instance, [status: OK] }
        }
    }

    @Secured(['ROLE_EDITOR'])
    def delete(FormAPart1a formAPart1Instance) {

        if (formAPart1Instance == null) {
            notFound()
            return
        }

        formAPart1aService.delete(formAPart1Instance)

        request.withFormat {
            form {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'formAPart1.label', default: 'FormAPart1'), formAPart1Instance.id])
                redirect action: "show", controller: "report", id: formAPart1Instance.report.id, method: "GET"
            }
            '*' { render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'formAPart1.label', default: 'FormAPart1'), params.id])
                redirect controller: "report", action: "index", method: "GET"
            }
            '*' { render status: NOT_FOUND }
        }
    }

    def print(FormAPart1a formAPart1aInstance) {
        // to force browser to download PDF, add parameter  filename: '<name>.pdf'
        def fileName = formAPart1aInstance.report.getReportName() + "_" + formAPart1aInstance.title
        response.setHeader("Content-Disposition", "attachment; filename=" + fileName + ".pdf")
        renderPdf template: 'print', contentType: 'application/pdf', model: [formAPart1aInstance: formAPart1aInstance]
    }

    @Secured(['ROLE_EDITOR'])
    def addMoreRows() {

        Report r = reportService.load(params.long('report.id'))

        FormAPart1a formAPart1a = new FormAPart1a(report: r);
        FormAPart1ContainmentUnit formAPart1ContainmentUnit = new FormAPart1ContainmentUnit()
        formAPart1a.addToFormAContainmentUnitList(formAPart1ContainmentUnit)

        render template: "rowContainmentUnit", model: [formAPart1ContainmentUnitInstanceList: formAPart1a?.formAContainmentUnitList]

    }

    @Secured(['ROLE_EDITOR'])
    def deleteContainmentUnit() {
        def containmentUnitId = params.long('id')

        formAPart1aService.deleteContainmentUnit(containmentUnitId)

        request.withFormat {
            form {
                //Ajax Call - flash message cannot be used since rendered every RESPONSE
                def msg = message(code: 'default.deleted.message', args: [message(code: 'formAPart1.containmentUnit', default: 'FormAPart1ContainmentUnit'), containmentUnitId])
                render([message: msg] as JSON)
            }
            '*' { render status: OK }
        }
    }
}
