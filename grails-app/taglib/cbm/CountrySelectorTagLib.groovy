package cbm

class CountrySelectorTagLib {
    static defaultEncodeAs = 'none'
    // static encodeAsForTags = [tagName: 'raw']
    static namespace = "country"

    def countryService

    def select = { attrs, body ->
        out << g.select(name: attrs.name, from: countryService.getCountries(), optionKey: 'id', optionValue: countryService.getLocaleCountryName(), noSelection: ['': '--'], value: attrs['value'])

    }

    def name = { attrs, body ->
        def country = attrs['country']
        out << countryService.getLocaleName(country)
    }

}
