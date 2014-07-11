package cbm

import cbm.form.FormAPart1ContainmentUnit
import cbm.form.FormAPart1a
import cbm.report.Report
import grails.converters.JSON
import grails.plugin.springsecurity.annotation.Secured
import grails.transaction.Transactional
import java.text.SimpleDateFormat

@Secured(['ROLE_USER', 'ROLE_ADMIN'])
@Transactional(readOnly = true)
class FormAPart1aController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
		/*
        params.max = Math.min(max ?: 10, 100)
        def reportId = params.long('reportId')Report r = Report.findById(reportId)
        respond FormAPart1a.findAllByReport(r, [sort: "facilityName"]), model: [formAPart1InstanceCount: FormAPart1a.count(), reportId: r.id]
		*/
		response.sendError(404)
    }

    def show(FormAPart1a formAPart1Instance) {
        respond formAPart1Instance
    }

    def create() {
        respond new FormAPart1a(params)
    }

    @Transactional
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


        formAPart1Instance.save flush: true

        request.withFormat {
            form {
                flash.message = message(code: 'default.created.message', args: [message(code: 'formAPart1.label', default: 'FormAPart1'), formAPart1Instance.id])
                redirect formAPart1Instance
            }
            '*' { respond formAPart1Instance, [status: CREATED] }
        }
    }

    def edit(FormAPart1a formAPart1Instance) {
        respond formAPart1Instance
    }

	
    private Set<FormAPart1ContainmentUnit> getContainmentUnitsFromParams(def params, FormAPart1a formAPart1Instance) {

        def containmentUnitIds = params.list('formAPart1ContainmentUnitId')
        def containmentUnitBioSafetyLevels = params.list('formAPart1ContainmentUnit.bioSafetyLevel')
        def containmentUnitUnitTypes = params.list('formAPart1ContainmentUnit.unitType')
        def containmentUnitUnitSize = params.list('formAPart1ContainmentUnit.unitSize')
        def containmentUnitComments = params.list('formAPart1ContainmentUnit.comment')
        def containmentUnitCreateDates = params.list('formAPart1ContainmentUnit.created')
        Set<FormAPart1ContainmentUnit> results = new HashSet<FormAPart1ContainmentUnit>()


        for (int i = 0; i < containmentUnitIds.size(); i++) {
            FormAPart1ContainmentUnit formAPart1ContainmentUnit

            if (containmentUnitIds[i] == '') {  //new containment unit
                formAPart1ContainmentUnit = new FormAPart1ContainmentUnit()
            } else {
                formAPart1ContainmentUnit = FormAPart1ContainmentUnit.findById(containmentUnitIds[i])

            }
            formAPart1ContainmentUnit.bioSafetyLevel = containmentUnitBioSafetyLevels[i]
            formAPart1ContainmentUnit.unitType = containmentUnitUnitTypes[i]

            String unitSize = containmentUnitUnitSize[i].toString().trim()
            if (unitSize.isInteger()) {
                formAPart1ContainmentUnit.unitSize = unitSize.toInteger()
            } else {
                def a= new Object[1]
                a[0] = unitSize
                formAPart1Instance.errors.reject("formAPart1a.containment.unit.size.error",a, "Unit size error")
            }

            formAPart1ContainmentUnit.comment = containmentUnitComments[i]
            formAPart1ContainmentUnit.facility = formAPart1Instance

            formAPart1ContainmentUnit.created = new SimpleDateFormat(FormService.TIMESTAMP_FORMAT).parse(containmentUnitCreateDates[i]);

            if (unitSize.isInteger()){  //TODO change to generic error checking at row level
                results.add(formAPart1ContainmentUnit)
            }
        }
        return results
    }

    @Transactional
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

        formAPart1Instance.save flush: true

        request.withFormat {
            form {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'formAPart1.label', default: 'FormAPart1'), formAPart1Instance.id])
                redirect formAPart1Instance
            }
            '*' { respond formAPart1Instance, [status: OK] }
        }
    }

    @Transactional
    def delete(FormAPart1a formAPart1Instance) {

        if (formAPart1Instance == null) {
            notFound()
            return
        }

        formAPart1Instance.delete flush: true

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
                redirect action: "index", method: "GET"
            }
            '*' { render status: NOT_FOUND }
        }
    }

    def print(FormAPart1a formAPart1aInstance) {
        // to force browser to download PDF, add parameter  filename: '<name>.pdf'
        def fileName = formAPart1aInstance.report.getReportName() + "_"+ formAPart1aInstance.title
        response.setHeader("Content-Disposition", "attachment; filename="+fileName+".pdf")
        renderPdf template: 'print', contentType: 'application/pdf', model: [formAPart1aInstance: formAPart1aInstance]
    }

    def addMoreRows() {

        def reportId = params.long('report.id')
        Report r = Report.findById(reportId)

        FormAPart1a formAPart1a = new FormAPart1a(report: r);
        FormAPart1ContainmentUnit formAPart1ContainmentUnit = new FormAPart1ContainmentUnit()
        formAPart1a.addToFormAContainmentUnitList(formAPart1ContainmentUnit)

        render template: "../formAPart1ContainmentUnit/rowContainmentUnit", model: [formAPart1ContainmentUnitInstanceList: formAPart1a?.formAContainmentUnitList]

    }

    @Transactional
    def deleteContainmentUnit() {
        def formAP1CUId = params.long('id')
        FormAPart1ContainmentUnit formAPart1ContainmentUnitInstance = FormAPart1ContainmentUnit.findById(formAP1CUId)

        formAPart1ContainmentUnitInstance.delete flush: true
        request.withFormat {
            form {
                //Ajax Call - flash message cannot be used since rendered every RESPONSE
                def msg = message(code: 'default.deleted.message', args: [message(code: 'formAPart1.containmentUnit', default: 'FormAPart1ContainmentUnit'), formAPart1ContainmentUnitInstance.id])
                render([message: msg] as JSON)
            }
            '*' { render status: OK }
        }
    }
}
