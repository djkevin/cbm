package cbm

import grails.transaction.Transactional
import org.springframework.context.i18n.LocaleContextHolder

@Transactional
class CountryService {

    def messageSource

    /** indicator for an unknown value (String type) */
    static final String UNKNOWN = "???"

    def getLocaleName(cbm.admin.Country country) {
        def lang = LocaleContextHolder.getLocale().getLanguage().capitalize()

        if (!lang) return country.shortNameEn

        if (Locale.contains(lang.toUpperCase())) {
            return country."shortName${lang}"
        }else return UNKNOWN
    }
}
