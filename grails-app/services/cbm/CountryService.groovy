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

    /**
     * Gets the list of countries, ordered alphabetically by name in the locale language
     * @return alphabetically sorted countries
     */
    def getCountries(){

        def sortedCountries = cbm.admin.Country.list([cache:true, sort:getLocaleCountryName(), order: "asc"])

        sortedCountries

    }

    /**
     * Retrieves the correct attribute of the Country domain class based on the locale
     * e.g FR->shortNameFr, EN->shortNameEn
     * @return locale specific name attribute
     */
    String getLocaleCountryName(){
        def lang = LocaleContextHolder.getLocale().getLanguage().capitalize()

        String name  = "shortNameEn" //default lang
        if (lang && Locale.contains(lang.toUpperCase())){
            name ="shortName${lang}"
        }

        name
    }


}
