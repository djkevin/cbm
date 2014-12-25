package cbm.form

import grails.transaction.Transactional

@Transactional
class FormCService {

    void save(FormC formC) {
        formC.save()
    }

    void delete(FormC formC) {
        formC.delete()
    }

    void delete(long formCId) {
        def formC = FormC.load(formCId)
        formC.delete()
    }
}
