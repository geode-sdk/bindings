import sys
import re

if len(sys.argv) < 3:
    print(f'usage: python {sys.argv[0]} <input broma> <output broma>')
    exit(1)

path_in = sys.argv[1]
path_out = sys.argv[2]

with open(path_in, 'r') as file:
    txt_in = file.read()

with open(path_out, 'r') as file:
    txt_out = file.read()

# abuse the fact we always keep members at the bottom of the class (which we should keep doing)

def remove_comments(s):
    return re.sub(r'\/\/.*', '', re.sub(r'\/\*.*?\*\/', '', s))

d = {}
lines = txt_in.splitlines()
i = 0
while i < len(lines):
    line = lines[i]
    if line.startswith('class'):
        name = line.split()[1]
        # if name != "FLAlertLayer":
        #     i += 1
        #     break
        d[name] = []
        i += 1
        # find first member
        while i < len(lines):
            line = remove_comments(lines[i])
            # make sure theres no (, ) and only one level of indentation
            if line.strip() and '(' not in line and ')' not in line and re.match(r'^(?:\t|    )\S', line) and ';' in line:
                # we found it!
                break
            elif lines[i].startswith('}'):
                break
            else:
                i += 1
        # find closing }
        while i < len(lines):
            line = lines[i].strip()
            if lines[i].startswith('}'):
                break
            elif '(' in remove_comments(line):
                i += 1
            else:
                d[name].append('\t' + line)
                i += 1
        d[name] = '\n'.join(d[name])
        if not d[name]:
            del d[name]
        
    i += 1

lines = txt_out.splitlines()
i = 0
while i < len(lines):
    line = lines[i]
    if line.startswith('class'):
        name = line.split()[1]
        if name in d:
            # find }
            while i < len(lines):
                if lines[i].startswith('}'):
                    lines[i] = '\n' + d[name] + '\n}'
                    break
                else:
                    i += 1
    i += 1

txt_out = '\n'.join(lines)

# print(d)
with open(path_out, 'w') as file:
    file.write(txt_out)