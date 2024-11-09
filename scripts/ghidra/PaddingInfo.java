
import java.util.HashMap;
import java.util.Map;
import java.util.regex.Pattern;

public class PaddingInfo {
    public final Map<Platform, Integer> platforms;
    public final int offset;

    public PaddingInfo(Map<Platform, Integer> platforms, int offset) {
        this.platforms = platforms;
        this.offset = offset;
    }

    public PaddingInfo(String comment, Platform curPlatform) {
        if (comment == null || comment.isEmpty()) {
            this.platforms = Map.of();
            this.offset = -1;
            return;
        }
        var meta = Pattern.compile("GEODE_METADATA\\((?<meta>.*?)\\)").matcher(comment);
        if (!meta.find()) {
            this.platforms = Map.of();
            this.offset = -1;
            return;
        }
        var matcher = Pattern.compile(
            "(?<platform>offset|win|imac|m1|android32|android64|ios)\\s*0x(?<addr>[0-9a-fA-F]+)"
        ).matcher(meta.group("meta"));
        this.platforms = new HashMap<Platform, Integer>();
        int offset = 0;
        while (matcher.find()) {
            var addr = Integer.parseInt(matcher.group("addr"), 16);
            if (matcher.group("platform").equals("offset")) {
                offset = addr;
            }
            else {
                this.platforms.put(Platform.fromShortName(matcher.group("platform"), curPlatform), addr);
            }
        }
        this.offset = offset;
    }

    public String bromaString() {
        if (platforms.isEmpty()) {
            return "// UNIMPLEMENTED PADDING !!";
        }
        String name = "PAD = ";
        for (var platform : platforms.keySet().stream().sorted().toList()) {
            name += platform.getShortName() + " 0x" + Integer.toHexString(platforms.get(platform));
        }
        name += ";";
        return name;
    }

    public String toString() {
        String name = "GEODE_METADATA(";
        name += "offset 0x" + Integer.toHexString(offset);
        for (var platform : platforms.keySet().stream().sorted().toList()) {
            name += ", " + platform.getShortName() + " 0x" + Integer.toHexString(platforms.get(platform));
        }
        name += ")";
        return name;
    }

    public boolean unequal() {
        return !platforms.isEmpty() && platforms.values().stream().distinct().count() != 1;
    }
}
