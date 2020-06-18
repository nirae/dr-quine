#! /usr/bin/env python3

import os

source = """#! /usr/bin/env python3

import os

source = {q}{q}{q}{s}{q}{q}{q}

number = {nb}

if number >= 0:
    file = open("Sully_%d.py" % number, "w+")
    file.write(source.format(q='"', s=source, nb=(number - 1 if number else 0)))
    file.close()
    os.chmod("Sully_%d.py" % number, 0o755)
    if number > 0:
        os.system("./Sully_%d.py" % number)
"""

number = 5

if number >= 0:
    file = open("Sully_%d.py" % number, "w+")
    file.write(source.format(q='"', s=source, nb=(number - 1 if number else 0)))
    file.close()
    os.chmod("Sully_%d.py" % number, 0o755)
    if number > 0:
        os.system("./Sully_%d.py" % number)
