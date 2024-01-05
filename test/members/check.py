import sys
import os

binary_path = sys.argv[1]

with open(binary_path, 'rb') as file:
    data = file.read()

PREFIX = b'[BEGIN]'
SUFFIX = b'[END]'

i = 0
while True:
    i = data.find(PREFIX, i)
    e = data.find(SUFFIX, i)
    if i == -1 or e == -1: break
    part = data[i + len(PREFIX):e].decode()
    name, expected, actual = part.split('.')
    expected, actual = int(expected), int(actual)
    if expected != actual:
        print(f'{name} is offset by {actual - expected:#x} bytes (expected={expected:#x}, actual={actual:#x})')
    i = e