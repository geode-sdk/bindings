
public enum Platform {
    WINDOWS("Windows", "win", false),
    MAC("MacOS", "mac", true),
    ANDROID32("Android32", "android32", true),
    ANDROID64("Android64", "android64", true);

    private final String longName;
    private final String shortName;
    private final boolean singleBinary;
    private Platform(String longName, String shortName, boolean singleBinary) {
        this.longName = longName;
        this.shortName = shortName;
        this.singleBinary = singleBinary;
    }
    public static Platform parse(String longName) {
        for (var v : Platform.values()) {
            if (v.getLongName().equals(longName)) {
                return v;
            }
        }
        throw new Error("Invalid platform to parse; this error should be unreachable");
    }
    public String getLongName() {
        return this.longName;
    }
    public String getShortName() {
        return this.shortName;
    }
    public boolean hasSingleBinary() {
        return this.singleBinary;
    }
}
