package cbm.form

import grails.transaction.Transactional

@Transactional
class FormBService {

    void save(FormB formB) {
        formB.save()
    }

    void delete(FormB formB) {
        formB.delete()
    }

    void delete(long formBId) {
        def formB = FormB.load(formBId)
        formB.delete()
    }
}
