package cbm

enum Country implements org.springframework.context.MessageSourceResolvable {
    CANADA, MAURITIUS, SWITZERLAND, AUSTRALIA, GREECE, SWEDEN, UNITEDSTATES,UNITEDKINGDOM, MALAYSIA, BELGIUM

    Object[] getArguments() { [] as Object[] }

    String[] getCodes() {
        ["${getClass().name}.${name()}"] as String[]
    }

    String getDefaultMessage() { name() }
}