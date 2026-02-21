import sys
import os
import lief
import subprocess
from itanium_demangler import parse as demangle
from itanium_demangler import is_ctor_or_dtor

# i got the bins from here https://android.googlesource.com/platform/prebuilts/gcc/linux-x86/aarch64/aarch64-linux-android-4.9/+/52c01c4a62fd891f4c517ef9d097833639fdea12/bin

# I VIBECODED THIS: DO I CARE? NO!

if len(sys.argv) != 3:
    print("Usage: python android_so2stub_lief.py <old_objcopy> <file.so>", file=sys.stderr)
    sys.exit(1)

OLD_OBJCOPY = sys.argv[1]
SO_FILE = sys.argv[2]

if not os.path.exists(SO_FILE):
    print("File not found", file=sys.stderr)
    sys.exit(1)

SO_FILE = os.path.normpath(SO_FILE)
SO_NAME = os.path.basename(SO_FILE)
BASE = SO_NAME.removesuffix(".so")

# Load ELF
elf = lief.parse(SO_FILE)

# Detect architecture
machine_map = {
    lief.ELF.ARCH.AARCH64: "arm64",
    lief.ELF.ARCH.ARM: "arm",
    lief.ELF.ARCH.I386: "x86",
    lief.ELF.ARCH.X86_64: "x86_64"
}
machine = machine_map.get(elf.header.machine_type, "unknown")
print(f"Detected architecture: {machine}")

# Collect dynamic symbols
exports = []
for sym in elf.dynamic_symbols:
    if sym.value != 0  and sym.name:
        exports.append(sym.name)

to_remove = []
# Optional cocos filtering
def should_remove(e):
    try:
        ast = demangle(e)
        representation = str(ast)

        if any(x in representation for x in ("ctor}", "dtor}")):
            print(f"Removing symbol: {e} (constructor/destructor)")
            return True
        return False
    except Exception:
        return False
    # return e.startswith("_ZN") and any(x in e for x in ("C1E", "C2E", "C3E", "D0E", "D1E", "D2E"))
for e in exports:
    if should_remove(e):
        to_remove.append(e)


# --- Filter dynamic symbols ---
for name in to_remove:
    try:
        # print(f"Removing symbol: {name}")
        elf.remove_dynamic_symbol(name)
        st = elf.get_symbol(name)
        if st:
            elf.remove(st)
    except Exception:
        pass

# Write stub ELF
STRIP_SO = f"{BASE}_strip.so"
elf.write(STRIP_SO)

STUB_SO = f"{BASE}_stub.so"
subprocess.run([OLD_OBJCOPY, "--only-section=.dynsym", "--only-section=.dynstr", "--strip-unneeded", STRIP_SO, STUB_SO], check=True)

print(f"Generated stub: {STUB_SO}")
print("Done.")