import subprocess
import sys
import os

try:
    subprocess.run(["dumpbin"], capture_output=True)
except Exception:
    print("dumpbin not found, run this in a VS environment")
    print("search for \"Developer Command Prompt for VS\" or something")
    exit(1)

if len(sys.argv) != 2:
    print(f"Usage: python dll2lib.py <file.dll>", file=sys.stderr)
    exit(1)

DLL_FILE = sys.argv[1]

if not os.path.exists(DLL_FILE):
    print("File not found", file=sys.stderr)
    exit(1)

DLL_FILE = DLL_FILE.removeprefix('.\\')
DLL_NAME = DLL_FILE.removesuffix('.dll')
DEF_FILE = f"{DLL_NAME}.def"
LIB_FILE = f"{DLL_NAME}.lib"

headers_raw = subprocess.run(["dumpbin", "/headers", DLL_FILE], capture_output=True).stdout.decode()[:350]
machine = 'x64' if 'machine (x64)' in headers_raw else 'x86'

exports_raw = subprocess.run(["dumpbin", "/exports", DLL_FILE], capture_output=True).stdout.decode()
exports = [l.split()[3] for l in exports_raw.splitlines()[19:] if len(l.split()) > 3]

if DLL_NAME in ('libcocos2d', 'libExtensions'):
    # Removes constructors and destructors
    should_remove = lambda e: e.startswith('??0') or e.startswith('??1')
    for e in exports:
        if should_remove(e):
            print(f"Removing {e}")
    exports = [e for e in exports if not should_remove(e)]

with open(DEF_FILE, 'w') as file:
    file.write(f"LIBRARY {DLL_NAME}.dll\n")
    file.write("EXPORTS\n")
    file.write('\n'.join(exports))

subprocess.run(["lib", f"/def:{DEF_FILE}", f"/out:{LIB_FILE}", f"/machine:{machine}"])

os.remove(DEF_FILE)
os.remove(f"{DLL_NAME}.exp")
