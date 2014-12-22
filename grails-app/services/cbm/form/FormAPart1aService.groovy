package cbm.form

import grails.transaction.Transactional

@Transactional
class FormAPart1aService {

    void save(FormAPart1a formAPart1a) {
        formAPart1a.save()
    }


    void delete(FormAPart1a formAPart1a) {
        formAPart1a.delete()
    }

    void delete(long formAPart1aId) {
        def formAPart1a = FormAPart1a.load(formAPart1aId)
        formAPart1a.delete()
    }

    void deleteContainmentUnit(long id){
        def formAPart1ContainmentUnit = FormAPart1ContainmentUnit.load(id)
        formAPart1ContainmentUnit.delete()
    }
}
