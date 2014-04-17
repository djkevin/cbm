package cbm



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional
import grails.plugin.springsecurity.annotation.Secured

@Secured(['ROLE_USER', 'ROLE_ADMIN'])
@Transactional(readOnly = true)
class FormAPart1aController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        def reportId=params.long('reportId')
        Report r = Report.findById(reportId)
        respond FormAPart1a.findAllByReport(r,[sort: "facilityName"]), model:[formAPart1InstanceCount: FormAPart1a.count(),reportId: r.id]
    }

    def show(FormAPart1a formAPart1Instance) {
        respond formAPart1Instance
    }

    def create() {      //TODO check for null or empty params
        def reportId = params.long('reportId')
        Report r =  Report.findById(reportId)
        FormAPart1a formAPart1a = new FormAPart1a();
        formAPart1a.setReport(r)
        respond formAPart1a
    }

    @Transactional
    def save(FormAPart1a formAPart1Instance) {
        if (formAPart1Instance == null) {
            notFound()
            return
        }

        if (formAPart1Instance.hasErrors()) {
            respond formAPart1Instance.errors, view:'create'
            return
        }

        if (params.containsKey('formAPart1ContainmentUnitId')){
            Set<FormAPart1ContainmentUnit> containmentUnits =  getContainmentUnitsFromParams(params, formAPart1Instance)
            formAPart1Instance.formAContainmentUnitList = containmentUnits
        }

        formAPart1Instance.save flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.created.message', args: [message(code: 'formAPart1Instance.label', default: 'FormAPart1'), formAPart1Instance.id])
                redirect formAPart1Instance
            }
            '*' { respond formAPart1Instance, [status: CREATED] }
        }
    }

    def edit(FormAPart1a formAPart1Instance) {
        respond formAPart1Instance
    }

    private Set<FormAPart1ContainmentUnit> getContainmentUnitsFromParams(def params, def formAPart1Instance){

        def  containmentUnitIds = params.list('formAPart1ContainmentUnitId')
        def  containmentUnitBioSafetyLevels = params.list('formAPart1ContainmentUnit.bioSafetyLevel')
        def  containmentUnitUnitTypes = params.list('formAPart1ContainmentUnit.unitType')
        def  containmentUnitUnitSize = params.list('formAPart1ContainmentUnit.unitSize')
        def  containmentUnitComments = params.list('formAPart1ContainmentUnit.comment')
        Set<FormAPart1ContainmentUnit> results= new HashSet<FormAPart1ContainmentUnit>()

        for (int i = 0; i < containmentUnitIds.size(); i++){
            FormAPart1ContainmentUnit formAPart1ContainmentUnit
            if (containmentUnitIds[i]==''){  //new containment unit
                formAPart1ContainmentUnit = new FormAPart1ContainmentUnit()
            }else{
                formAPart1ContainmentUnit = FormAPart1ContainmentUnit.findById(containmentUnitIds[i])

            }
            formAPart1ContainmentUnit.bioSafetyLevel =  containmentUnitBioSafetyLevels[i]
            formAPart1ContainmentUnit.unitType =  containmentUnitUnitTypes[i]
            formAPart1ContainmentUnit.unitSize =  Integer.parseInt(containmentUnitUnitSize[i])
            formAPart1ContainmentUnit.comment =  containmentUnitComments[i]
            formAPart1ContainmentUnit.facility  =formAPart1Instance

            results.add(formAPart1ContainmentUnit)
        }
        return results
    }
    @Transactional
    def update(FormAPart1a formAPart1Instance) {
        if (formAPart1Instance == null) {
            notFound()
            return
        }

        if (formAPart1Instance.hasErrors()) {
            respond formAPart1Instance.errors, view:'edit'
            return
        }

        //Update Containment Units if any
        if (params.containsKey('formAPart1ContainmentUnitId')){
            Set<FormAPart1ContainmentUnit> containmentUnits=  getContainmentUnitsFromParams(params, formAPart1Instance)
            formAPart1Instance.getFormAContainmentUnitList().addAll(containmentUnits)
        }

        formAPart1Instance.save flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'FormAPart1.label', default: 'FormAPart1'), formAPart1Instance.id])
                redirect formAPart1Instance
            }
            '*'{ respond formAPart1Instance, [status: OK] }
        }
    }

    @Transactional
    def delete(FormAPart1a formAPart1Instance) {

        if (formAPart1Instance == null) {
            notFound()
            return
        }

        formAPart1Instance.delete flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'FormAPart1.label', default: 'FormAPart1'), formAPart1Instance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'formAPart1Instance.label', default: 'FormAPart1'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }

    def print(FormAPart1a formAPart1aInstance) {
        // to force browser to download PDF, add parameter  filename: '<name>.pdf'
        renderPdf template: 'print', contentType: 'application/pdf', model: [formAPart1aInstance: formAPart1aInstance]
    }

    def addMoreRows() {

        def reportId=params.long('report.id')
        Report r = Report.findById(reportId)

        FormAPart1a formAPart1a = new FormAPart1a(report: r);
        FormAPart1ContainmentUnit formAPart1ContainmentUnit  = new FormAPart1ContainmentUnit()
        formAPart1a.addToFormAContainmentUnitList(formAPart1ContainmentUnit)

        render template: "../formAPart1ContainmentUnit/rowContainmentUnit", model: [formAPart1ContainmentUnitInstanceList: formAPart1a?.formAContainmentUnitList ]

    }
}
