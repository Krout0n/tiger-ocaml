type pos = int

type token =
  | EOF of pos * pos
  | Num of int * pos * pos
  | Ident of string * pos * pos
  | String of string * pos * pos
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
  | Comma of pos * pos
  | Colon of pos * pos
  | Semicolon of pos * pos
  | LParen of pos * pos
  | RParen of pos * pos
  | LBrack of pos * pos
  | RBrack of pos * pos
  | LBrace of pos * pos
  | RBrace of pos * pos
  | Dot of pos * pos
  | Plus of pos * pos
  | Minus of pos * pos
  | Asterisk of pos * pos
  | Slash of pos * pos
  | Equal of pos * pos
  | LTGT of pos * pos
  | LTE of pos * pos
  | GTE of pos * pos
  | LT of pos * pos
  | GT of pos * pos
  | And of pos * pos
  | Or of pos * pos
  | ColonEq of pos * pos
