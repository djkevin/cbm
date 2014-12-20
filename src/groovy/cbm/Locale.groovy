package cbm

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