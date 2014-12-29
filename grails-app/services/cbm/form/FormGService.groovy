package cbm.form

import grails.transaction.Transactional

@Transactional
class FormGService {

    void save(FormG formG) {
        formG.save()
    }

    void delete(FormG formG) {
        formG.delete()
    }

    void delete(long formGId) {
        def formG = FormG.load(formGId)
        formG.delete()
    }
}
