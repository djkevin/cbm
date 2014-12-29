package cbm.form

import grails.transaction.Transactional

@Transactional
class FormAPart2bService {

    void save(FormAPart2b formAPart2b) {
        formAPart2b.save()
    }

    void delete(FormAPart2b formAPart2b) {
        formAPart2b.delete()
    }

    void delete(long formAPart2bId) {
        def formAPart2b = FormAPart2b.load(formAPart2bId)
        formAPart2b.delete()
    }
}
