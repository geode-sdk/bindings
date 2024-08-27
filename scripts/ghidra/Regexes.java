
import java.text.MessageFormat;
import java.util.Arrays;
import java.util.regex.Pattern;

public class Regexes {
    // Helpers

    static final Pattern GRAB_NAMED_GROUP = Pattern.compile("(?<=\\(\\?)<\\w+>", 0);
    
    static final<T> String removeNamedGroups(T pattern) {
        return GRAB_NAMED_GROUP.matcher(pattern.toString()).replaceAll(":");
    }
    @SuppressWarnings("unchecked")
    static final<T> String formatRegex(String fmt, T... args) {
        return MessageFormat.format(
            fmt,
            Arrays.asList(args).stream().map(p -> removeNamedGroups(p)).toArray()
        );
    }
    static final Pattern generateRecursiveRegex(String format, int depth, String basecase, int flags) {
        var result = MessageFormat.format(format, basecase);
        while (depth > 0) {
            result = MessageFormat.format(format, removeNamedGroups(result));
            depth -= 1;
        }
        return Pattern.compile(result, flags);
    }

    // Generic regexes

    public static final Pattern grabClass(String className) {
        return Pattern.compile(
            formatRegex(
                // Grab attributes
                "(?<attrs>\\[\\[.*?\\]\\]\\s*)?" + 
                // Grab name
                "class (?<name>{0})\\s+(?::.*?)?" + 
                // Grab body (assuming closing brace is on its own line without any preceding whitespace)
                "\\'{'(?<body>.*?)(?<closingbrace>^\\'})'",
                className
            ),
            Pattern.DOTALL | Pattern.MULTILINE
        );
    }
    // Pass class name as funName if you want to grab destructor
    public static final Pattern grabFunction(String funName) {
        return Pattern.compile(
            formatRegex(
                // Must match start of line (MULTILINE flag required) - also requires that the 
                // function not be intended more than 4 spaces or a single tab
                "(?<=^(?:(?: '{'0,4'}')|\\t))" + 
                // Get the dispatch modifier keyword if one is defined
                "(?<dispatch>(?:inline|virtual|static|callback)\\s+)?" +
                // Grab the return type and name of the function, or the name if it's a destructor
                "(?:(?:(?<return>{0})\\s+(?<name>{2}))|(?<destructor>~{2}))" + 
                // Grab the parameters
                "\\(\\s*(?<params>(?:{1}\\s*,?\\s*)*)\\)" +
                "(?:"+
                    // Grab the platforms
                    "(?:\\s*=\\s*(?<platforms>(?:\\w+\\s+(?:0x[0-9a-fA-F]+|inline)\\s*,?\\s*)+))" + 
                    // Or the body
                    "|(?<inlinebody>(?=\\s*\\'{'))" +
                    // Or where we can add platforms
                    "|(?<insertplatformshere>\\s*(?=;))" + 
                ")",
                GRAB_TYPE, GRAB_PARAM, funName
            ),
            Pattern.DOTALL | Pattern.MULTILINE
        );
    }
    public static final Pattern grabPlatformAddress(String platformName) {
        return Pattern.compile(
            formatRegex("(?<platform>{0})\\s+0x(?<addr>[0-9a-fA-F]+)", platformName),
            Pattern.DOTALL
        );
    }
    public static final Pattern grabPlatformAddress(Platform platform) {
        return grabPlatformAddress(platform.getShortName());
    }
    public static final Pattern grabMemberOrPad(String memberName) {
        return Pattern.compile(
            formatRegex(
                // Must match start of line (MULTILINE flag required) - also requires that the 
                // function not be intended more than 4 spaces or a single tab
                "(?<=^(?:(?: '{'0,4'}')|\\t))" + 
                "(?<comments>(?://(?:.*\\n))+(?:(?: '{'0,4'}')|\\t))?" + 
                // Grab member
                "(?:(?<type>{0})\\s+(?<name>{1})\\s*;)|" + 
                // Or padding
                "(?:PAD\\s*=\\s*(?<platforms>(?:\\w+\\s+0x[0-9a-fA-F]+\\s*,?\\s*)+);)",
                GRAB_TYPE, memberName
            ),
            Pattern.MULTILINE
        );
    }

    // Fixed regexes

    public static final Pattern GRAB_LINK_ATTR = Pattern.compile(
        "link\\((?<platforms>.*?)\\)",
        Pattern.DOTALL
    );
    public static final Pattern GRAB_CLASS = grabClass("(?:\\w+::)*\\w+");
    public static final Pattern GRAB_TYPE = generateRecursiveRegex(
        "(?<lconst>\\bconst\\s+)?(?<sign>\\b(?:signed|unsigned)\\s+)?(?<name>(?:\\w+::)*\\w+)(?<template><(?:{0})(?:\\s*,\\s*(?:{0}))*>)?(?<rconst>\\s+const\\b)?(?<ptr>\\s*\\*+)?(?<ref>\\s*&+)?",
        2,
        "__depth_limit",
        Pattern.DOTALL
    );
    public static final Pattern GRAB_PARAM = Pattern.compile(
        formatRegex(
            "(?<type>{0})(?:(?:\\s+(?<name>\\w+))|(?<insertnamehere>\\s*))",
            GRAB_TYPE
        ),
        Pattern.DOTALL
    );
    public static final Pattern GRAB_FUNCTION = grabFunction("\\w+");
    public static final Pattern GRAB_MEMBER = grabMemberOrPad("\\w+");
    public static final Pattern GRAB_PLATFORM_ADDRESS = grabPlatformAddress("\\w+");
}
