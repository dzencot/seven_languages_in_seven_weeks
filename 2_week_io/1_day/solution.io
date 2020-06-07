#!/usr/bin/env io
a := 1 + 1
a type println // number

// b := 1 + "one" // error
// b type println

0 == true println // true
"" == true println // true
nil == false println // false

myObject := Object clone
myObject example := method("Hello from slot" println)
myObject example
