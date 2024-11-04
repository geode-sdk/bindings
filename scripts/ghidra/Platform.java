
public enum Platform {
    WINDOWS32("Windows (32-bit)", "win", false, "win"),
    WINDOWS64("Windows (64-bit)", "win", false, "win"),
    MAC_INTEL("MacOS (x64)", "imac", true, "mac"),
    MAC_ARM("MacOS (ARM)", "m1", true, "mac"),
    ANDROID32("Android32", "android32", true, "android"),
    ANDROID64("Android64", "android64", true, "android"),
    IOS("iOS", "ios", true);

    private final String longName;
    private final String shortName;
    private final boolean singleBinary;
    private final String groupName;

    private Platform(String longName, String shortName, boolean singleBinary) {
        this.longName = longName;
        this.shortName = shortName;
        this.singleBinary = singleBinary;
        this.groupName = null;
    }

    private Platform(String longName, String shortName, boolean singleBinary, String groupName) {
        this.longName = longName;
        this.shortName = shortName;
        this.singleBinary = singleBinary;
        this.groupName = groupName;
    }

    public static Platform fromShortName(String shortName, Platform curPlatform) {
        for (var v : Platform.values()) {
            if (v.respondsToName(shortName, curPlatform)) {
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
    public String getGroupName() {
        return this.groupName;
    }
    public boolean hasSingleBinary() {
        return this.singleBinary;
    }
    public boolean respondsToName(String shortName, Platform curPlatform) {
        if (this.shortName.equals(shortName)) {
            if ((this == Platform.WINDOWS32 || this == Platform.WINDOWS64) && (curPlatform == Platform.WINDOWS32 || curPlatform == Platform.WINDOWS64)) {
                return this == curPlatform;
            }
            return true;
        }
        if (this.groupName != null && this.groupName.equals(shortName)) {
            return true;
        }

        return false;
    }
}
