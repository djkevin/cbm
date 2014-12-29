package cbm.form

import grails.transaction.Transactional

@Transactional
class FormFService {

    void save(FormF formF) {
        formF.save()
    }

    void delete(FormF formF) {
        formF.delete()
    }

    void delete(long formFId) {
        def formF = FormF.load(formFId)
        formF.delete()
    }
}
