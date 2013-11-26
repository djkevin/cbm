package cbm


enum Language implements org.springframework.context.MessageSourceResolvable {
    ENGLISH, SPANISH, ARABIC, FRENCH

    Object[] getArguments() { [] as Object[] }

    String[] getCodes() {
        ["${getClass().name}.${name()}"] as String[]
    }

    String getDefaultMessage() { name() }
}