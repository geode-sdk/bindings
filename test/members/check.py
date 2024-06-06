import sys
import os

# windows color
os.system('')

binary_path = sys.argv[1]
if os.path.isdir(binary_path):
    # path is of the build dir, try to find executable
    possible = [
        'libTestMembers.so',
        'libTestMembers.dylib',
        'TestMembers.dll',
        'Release/TestMembers.dll',
        'RelWithDebInfo/TestMembers.dll',
        'Debug/TestMembers.dll',
    ]
    for name in possible:
        path = f'{binary_path}/{name}'
        if os.path.exists(path):
            binary_path = path
            break


with open(binary_path, 'rb') as file:
    data = file.read()

PREFIX = b'[GEODE_BEGIN]'
SUFFIX = b'[GEODE_END]'

errors = []
longest_name = 0

i = 0
while True:
    i = data.find(PREFIX, i)
    e = data.find(SUFFIX, i)
    if i == -1 or e == -1: break
    part = data[i + len(PREFIX):e].decode()
    name, expected, actual = part.split('.')
    expected, actual = int(expected), int(actual)
    if expected != actual:
        longest_name = max(longest_name, len(name))
        errors.append((name, expected, actual))
    i = e

def get_class_name(x):
    if '::' in x:
        return x.split("::")[0]
    elif 'sizeof(' in x:
        return x.partition('sizeof(')[2].rpartition(')')[0]
    else:
        return x

errors.sort(key=lambda x: (get_class_name(x[0]), x[1]))

RESET = '\x1b[0m'

if errors:
    for error in errors:
        name, expected, actual = error
        if name.startswith('sizeof('):
            name_color = '\x1b[34;1m' # bold blue
        else:
            name_color = '\x1b[1m' # bold
        if actual - expected < 0:
            offset_color = '\x1b[31m' # red
        else:
            offset_color = '\x1b[32m' # green
        number_color = '\x1b[33m' # yellow
        print(
            f'{name_color}{name:<{longest_name}}{RESET} - offset by {offset_color}{actual - expected:<#5x}{RESET} ' +
            f'(expected={number_color}{expected:#x}{RESET}, actual={number_color}{actual:#x}{RESET})'
        )

    exit(1)