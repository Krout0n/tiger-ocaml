type pos = int

type token =
  | EOF
  | Num of int * pos * pos
