package cbm.form

import grails.transaction.Transactional

@Transactional
class FormZeroService {


    void save(FormZero formZero) {
        formZero.save()
    }

    void delete(FormZero formZero) {
        formZero.delete()
    }

    void delete(long formZeroId) {
        def formZero = FormZero.load(formZeroId)
        formZero.delete()
    }
}
