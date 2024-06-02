
public enum Platform {
    WINDOWS("Windows", "win", false),
    MAC_INTEL("MacOS (x64)", "imac", true),
    MAC_ARM("MacOS (ARM)", "m1", true),
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
    public static Platform fromShortName(String shortName) {
        for (var v : Platform.values()) {
            if (v.getShortName().equals(shortName)) {
                return v;
            }
        }
        throw new RuntimeException("Invalid platform '" + shortName + "' to parse from short name; this error should be unreachable");
    }
    public static Platform fromLongName(String longName) {
        for (var v : Platform.values()) {
            if (v.getLongName().equals(longName)) {
                return v;
            }
        }
        throw new RuntimeException("Invalid platform '" + longName + "' to parse from long name; this error should be unreachable");
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
