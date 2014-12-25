package cbm.form

import grails.transaction.Transactional

@Transactional
class FormEService {

    void save(FormE formE) {
        formE.save()
    }

    void delete(FormE formE) {
        formE.delete()
    }

    void delete(long formEId) {
        def formE = FormE.load(formEId)
        formE.delete()
    }
}
