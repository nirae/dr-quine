#! /usr/bin/python3
# Un commentaire dehors

FILE = open("Grace_kid.py", "w+")

SOURCE = """#! /usr/bin/python3
# Un commentaire dehors

FILE = open("Grace_kid.py", "w+")

SOURCE = {q}{q}{q}{s}{q}{q}{q}

FT = lambda: FILE.write(SOURCE.format(q='"',s=SOURCE)) and FILE.close()

FT()
"""

FT = lambda: FILE.write(SOURCE.format(q='"',s=SOURCE)) and FILE.close()

FT()
