package main

import "fmt"

// commentaire en dehors

func print() {
    str := "package main%[1]c%[1]cimport %[2]cfmt%[2]c%[1]c%[1]c// commentaire en dehors%[1]c%[1]cfunc print() {%[1]c    str := %[2]c%[3]s%[2]c%[1]c    fmt.Printf(string(str), 10, 34, str)%[1]c}%[1]c%[1]cfunc main() {%[1]c    // commentaire dedans%[1]c    print()%[1]c}"
    fmt.Printf(string(str), 10, 34, str)
}

func main() {
    // commentaire dedans
    print()
}