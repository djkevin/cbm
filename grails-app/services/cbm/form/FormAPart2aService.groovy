package cbm.form

import grails.transaction.Transactional

@Transactional
class FormAPart2aService {

    void save(FormAPart2a formAPart2a) {
        formAPart2a.save()
    }

    void delete(FormAPart2a formAPart2a) {
        formAPart2a.delete()
    }

    void delete(long formAPart2aId) {
        def formAPart2a = FormAPart2a.load(formAPart2aId)
        formAPart2a.delete()
    }
}
