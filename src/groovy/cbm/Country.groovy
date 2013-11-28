package cbm

enum Country implements org.springframework.context.MessageSourceResolvable {
    CANADA, MAURITIUS, SWITZERLAND, AUSTRALIA, GREECE

    Object[] getArguments() { [] as Object[] }

    String[] getCodes() {
        ["${getClass().name}.${name()}"] as String[]
    }

    String getDefaultMessage() { name() }
}