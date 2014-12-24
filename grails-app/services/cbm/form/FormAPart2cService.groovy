package cbm.form

import grails.transaction.Transactional

@Transactional
class FormAPart2cService {

    void save(FormAPart2c formAPart2c) {
        formAPart2c.save()
    }

    void saveFormAPart2b(FormAPart2b formAPart2b){
        formAPart2b.save()
    }

    void delete(FormAPart2c formAPart2c) {
        formAPart2c.delete()
    }

    void delete(long formAPart2cId) {
        def formAPart2c = FormAPart2c.load(formAPart2cId)
        formAPart2c.delete()
    }
}
