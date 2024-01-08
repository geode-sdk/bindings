import sys
import re

path_in = sys.argv[1]
path_out = sys.argv[2]

with open(path_in, 'r') as file:
    txt_in = file.read()

with open(path_out, 'r') as file:
    txt_out = file.read()

for name, parents in re.findall(r'class (.+?) : (.+?) {', txt_in):
    txt_out = txt_out.replace(f'class {name} {{', f'class {name} : {parents} {{')

with open(path_out, 'w') as file:
    file.write(txt_out)