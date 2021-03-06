#!/bin/sh

cat <<EOF > modules.txt
- stdlib
# Thread realted modules are found in the next PATH spec. The others are found in the default one.
PATH:: `ocamlfind query threads.posix`
Pervasives
Arg
Array
ArrayLabels
Buffer
Callback
Char
Complex
Digest
Filename
Format
Gc
Genlex
Hashtbl
Int32
Int64
Lazy
Lexing
List
ListLabels
Map
Marshal
MoreLabels
Nativeint
Oo
Parsing
Printexc
Printf
Queue
Random
Scanf
Set
Sort
Stack
StdLabels
Stream
String
StringLabels
Sys
Weak
Unix
UnixLabels
Num
Big_int
Arith_status
Str
Thread
Mutex
Condition
Event
ThreadUnix
- extlib
PATH:: `ocamlfind query extlib`
IO
Base64
BitSet
Dllist
DynArray
Enum
ExtArray
ExtHashtbl
ExtList
ExtString
Global
OptParse
Option
PMap
RefList
Std
UChar
UTF8
Unzip
EOF
