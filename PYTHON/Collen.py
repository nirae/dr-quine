#! /usr/bin/python3
# Un commentaire dehors

def my_print():
    source = """#! /usr/bin/python3
# Un commentaire dehors

def my_print():
    source = {q}{q}{q}{s}{q}{q}{q}
    print(source.format(q=chr(34), s=source), end='')

def main():
    # Un commentaire dedans
    my_print()

if __name__ == "__main__":
    main()"""
    print(source.format(q=chr(34), s=source), end='')

def main():
    # Un commentaire dedans
    my_print()

if __name__ == "__main__":
    main()