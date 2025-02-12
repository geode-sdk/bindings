
public enum CConv {
    DEFAULT(null),
    CDECL("__cdecl"),
    STDCALL("__stdcall"),
    THISCALL("__thiscall"),
    MEMBERCALL("__thiscall"),
    FASTCALL("__fastcall"),
    OPTCALL("__fastcall");

    private final String ghidraName;
    private CConv(String ghidraName) {
        this.ghidraName = ghidraName;
    }
    public String getGhidraName() {
        return this.ghidraName;
    }
}
