package cbm

import cbm.constants.FormStatus
import cbm.constants.Visibility
import cbm.form.FormAPart2b
import cbm.form.FormAPart2bOrganigram
import grails.plugin.springsecurity.annotation.Secured
import org.springframework.web.multipart.MultipartFile
import org.springframework.web.multipart.MultipartHttpServletRequest

import static org.springframework.http.HttpStatus.*

@Secured(['ROLE_VIEWER', 'ROLE_EDITOR', 'ROLE_SUBMITTER'])
class FormAPart2bController {

    def formAPart2bService

    static allowedMethods = [save: "POST", update: "POST", delete: "DELETE"]

    static int MAX_FILE_SIZE = 5 * 1024 * 1024

    def index(Integer max) {
        response.sendError(404)
    }

    def show(FormAPart2b formAPart2bInstance) {
        respond formAPart2bInstance
    }

    @Secured(['ROLE_EDITOR'])
    def create() {

        FormAPart2b form = new FormAPart2b(params)
        form.formStatus = FormStatus.DRAFT
        form.visibility = Visibility.PUBLIC

        respond form
    }

    @Secured(['ROLE_EDITOR'])
    def save(FormAPart2b formAPart2bInstance) {

        //TODO move to Service
        MultipartFile uploadedFile = null
        String fileName = ""

        def okContentTypes = ['image/png', 'image/jpeg', 'image/jpg', 'image/gif']


        if (request instanceof MultipartHttpServletRequest) {

            //Get the file's name from request
            fileName = request.getFileNames()[0]
            //Get a reference to the uploaded file.
            uploadedFile = request.getFile(fileName)

        }

        FormAPart2bOrganigram formAPart2bOrganigram = new FormAPart2bOrganigram()

        if (!uploadedFile.empty) {

            if (uploadedFile.size > MAX_FILE_SIZE) {
                formAPart2bInstance.errors.reject("formAPart2b.image.size.error")

            } else if (!okContentTypes.contains(uploadedFile.contentType)) {
                formAPart2bInstance.errors.reject("formAPart2b.image.type.error")

            } else {
                formAPart2bOrganigram = (formAPart2bInstance.formAPart2bOrganigram == null) ? new FormAPart2bOrganigram() : formAPart2bInstance.formAPart2bOrganigram
                formAPart2bOrganigram.fileName = uploadedFile.originalFilename
                formAPart2bOrganigram.contentType = uploadedFile.contentType // TODO check unsupported types
                formAPart2bOrganigram.organisationalStructureDiagram = uploadedFile.bytes
                formAPart2bInstance.formAPart2bOrganigram = formAPart2bOrganigram

            }
        }

        if (formAPart2bInstance == null) {
            notFound()
            return
        }
        if (formAPart2bInstance.hasErrors()) {

            if (!uploadedFile.empty) {
                formAPart2bInstance.errors.reject("formAPart2b.image.reupload")// Ask to resubmit image
            }
            FormAPart2bOrganigram organigram = new FormAPart2bOrganigram(fileName: "")

            formAPart2bInstance.formAPart2bOrganigram = organigram

            respond formAPart2bInstance.errors, view: 'create'
            return
        }

        formAPart2bService.save(formAPart2bInstance)

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'formAPart2b.label', default: 'FormAPart2b'), formAPart2bInstance.id])
                redirect formAPart2bInstance
                //  redirect (controller: "report", action:"show", id:formAPart2bInstance.report.id, report:formAPart2bInstance.report)
            }
            '*' { respond formAPart2bInstance, [status: CREATED] }
        }
    }

    @Secured(['ROLE_EDITOR'])
    def edit(FormAPart2b formAPart2bInstance) {
        respond formAPart2bInstance
    }

    @Secured(['ROLE_EDITOR'])
    def update(FormAPart2b formAPart2bInstance) {

        //TODO move to Service
        MultipartFile uploadedFile = null
        String fileName = ""

        def okContentTypes = ['image/png', 'image/jpeg', 'image/jpg', 'image/gif']

        if (request instanceof MultipartHttpServletRequest) {

            //Get the file's name from request
            fileName = request.getFileNames()[0]
            //Get a reference to the uploaded file.
            uploadedFile = request.getFile(fileName)


        }
        FormAPart2bOrganigram formAPart2bOrganigram = new FormAPart2bOrganigram()

        if (!uploadedFile.empty) {

            if (uploadedFile.size > MAX_FILE_SIZE) {
                formAPart2bInstance.errors.reject("formAPart2b.image.size.error")
            } else if (!okContentTypes.contains(uploadedFile.contentType)) {
                formAPart2bInstance.errors.reject("formAPart2b.image.type.error")

            } else {
                formAPart2bOrganigram = (formAPart2bInstance.formAPart2bOrganigram == null) ? new FormAPart2bOrganigram() : formAPart2bInstance.formAPart2bOrganigram
                formAPart2bOrganigram.fileName = uploadedFile.originalFilename
                formAPart2bOrganigram.contentType = uploadedFile.contentType // TODO check unsupported types
                formAPart2bOrganigram.organisationalStructureDiagram = uploadedFile.bytes
                formAPart2bInstance.formAPart2bOrganigram = formAPart2bOrganigram

            }
        }

        if (formAPart2bInstance == null) {
            notFound()
            return
        }

        if (formAPart2bInstance.hasErrors()) {
            respond formAPart2bInstance.errors, view: 'edit'
            return
        }

        formAPart2bService.save(formAPart2bInstance)

        request.withFormat {

            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'formAPart2b.label', default: 'FormAPart2b'), formAPart2bInstance.id])
                redirect formAPart2bInstance
            }
            '*' { respond formAPart2bInstance, [status: OK] }
        }
    }

    @Secured(['ROLE_EDITOR'])
    def delete(FormAPart2b formAPart2bInstance) {

        if (formAPart2bInstance == null) {
            notFound()
            return
        }

        formAPart2bService.delete(formAPart2bInstance)

        request.withFormat {
            form {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'formAPart2b.label', default: 'FormAPart2b'), formAPart2bInstance.id])
                redirect action: "show", controller: "report", id: formAPart2bInstance.report.id, method: "GET"
            }
            '*' { render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'formAPart2b.label', default: 'FormAPart2b'), params.id])
                redirect controller: "report", action: "index", method: "GET"
            }
            '*' { render status: NOT_FOUND }
        }
    }

    def print(FormAPart2b formAPart2bInstance) {
        // to force browser to download PDF, add parameter  filename: '<name>.pdf'
        def fileName = formAPart2bInstance.report.getReportName() + "_" + formAPart2bInstance.title
        response.setHeader("Content-Disposition", "attachment; filename=" + fileName + ".pdf")
        renderPdf template: 'print', contentType: 'application/pdf', model: [formAPart2bInstance: formAPart2bInstance]
    }

    def displayImage() {

        def id = params.long('formAPart2bOrganigram.id')
        FormAPart2bOrganigram formAPart2bOrganigram = FormAPart2bOrganigram.get(id)

        if (formAPart2bOrganigram == null) { //e.g during validation errors, file is not reuploaded automatically
            notFound()
            return
        }

        render file: formAPart2bOrganigram.organisationalStructureDiagram, contentType: formAPart2bOrganigram.contentType

    }

}
