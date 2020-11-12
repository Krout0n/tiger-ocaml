{
  (* This part is inserted into the head of the generated file. *)
}

let digits = ['0'-'9']

rule token = parse
| digits+ {
  Token.Num ((int_of_string (Lexing.lexeme lexbuf)), Lexing.lexeme_start lexbuf, Lexing.lexeme_end lexbuf)
}
| eof {
  Token.EOF
}

{
  (* This part is inserted into the end of the generated file. *)
}
