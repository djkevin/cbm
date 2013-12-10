package cbm


enum Language implements org.springframework.context.MessageSourceResolvable {
    ENGLISH, SPANISH, ARABIC, FRENCH

    Object[] getArguments() { [] as Object[] }

    String[] getCodes() {
        ["${getClass().name}.${name()}"] as String[]
    }

    String getDefaultMessage() { name() }

    String getAbbreviation(){
        name().length()>2 ? name().substring(0,2):name()
    }
}