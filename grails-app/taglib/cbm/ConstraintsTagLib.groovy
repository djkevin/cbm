package cbm

class ConstraintsTagLib {
   // static defaultEncodeAs = 'html'
    //static encodeAsForTags = [tagName: 'raw']
    static namespace = "constraints"

    def maxLength = {attrs, body ->
        String fieldName = attrs['field']
        def obj = attrs['obj']
        out << obj?.constraints?."${fieldName}"?.maxSize

    }
}
