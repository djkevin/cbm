package cbm.constants


public enum Language{
//    ENGLISH, SPANISH, ARABIC, FRENCH

    ENGLISH,FRENCH

    @Delegate MessageSourceResolvableUtil messageSourceResolvableUtil= new MessageSourceResolvableUtil(this)

    String getAbbreviation(){
        name().length()>2 ? name().substring(0,2):name()
    }
}