package cbm.constants

/**
 * User: jutliah
 * Date: 5/1/14
 * Time: 10:58 AM
 * Allows enum constants to be i18ned
 */
class MessageSourceResolvableUtil implements org.springframework.context.MessageSourceResolvable {

    def enumClazz

    MessageSourceResolvableUtil(def clz) { enumClazz = clz }

    Object[] getArguments() { [] as Object[] }

    String[] getCodes() {

        return ["${enumClazz.class.canonicalName}.${enumClazz.name()}"] as String[]
    }

    String getDefaultMessage() {

        return enumClazz.name()
    }
}
