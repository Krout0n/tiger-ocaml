type pos = int

type token =
  | EOF of pos * pos
  | Num of int * pos * pos
  | While of pos * pos
  | For of pos * pos
  | To of pos * pos
  | Break of pos * pos
  | Let of pos * pos
  | In of pos * pos
  | End of pos * pos
  | Function of pos * pos
  | Var of pos * pos
  | Type of pos * pos
  | Array of pos * pos
  | If of pos * pos
  | Then of pos * pos
  | Else of pos * pos
  | Do of pos * pos
  | Of of pos * pos
  | Nil of pos * pos
