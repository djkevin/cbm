package cbm

class CountrySelectorTagLib {
    static defaultEncodeAs = 'none'
   // static encodeAsForTags = [tagName: 'raw']


/*    <g:select name="country"
    value="${statePartyInstance?.country?.id}"
    noSelection="['':promptCountrySelect]"
    from="${cbm.admin.Country.list().sort{a,b -> a.getName()<=>b.getName()}}"
    optionKey="id"
    optionValue="${{it.getName()}}"
    class="many-to-one"/>*/
//    def v =  message(code:'global.label.choose', locale: LocaleContextHolder.getLocale())


    def countrySelector = { attrs, body ->
        out << body() << g.select(name: attrs.name, from: cbm.admin.Country.list(), optionKey: 'id', optionValue: "name", noSelection: attrs.noSelection)
        ''
    }
}
