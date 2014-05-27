package cbm

/**
 * Created with IntelliJ IDEA.
 * User: jutliah
 * Date: 5/27/14
 * Time: 3:00 PM
 * To change this template use File | Settings | File Templates.
 */
public enum Locale {
    EN, FR

    public static boolean contains(String name) {

        for (Locale c : Locale.values()) {
            if (c.name().equals(name)) {
                return true;
            }
        }

        return false;
    }

}