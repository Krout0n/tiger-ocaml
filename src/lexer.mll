{
  (* This part is inserted into the head of the generated file. *)
}

let digits = ['0'-'9']

rule token = parse
| digits+ {
  Token.Num ((int_of_string (Lexing.lexeme lexbuf)), Lexing.lexeme_start lexbuf, Lexing.lexeme_end lexbuf)
}
| "while" { Token.While (Lexing.lexeme_start lexbuf, Lexing.lexeme_end lexbuf) }
| "for" { Token.For (Lexing.lexeme_start lexbuf, Lexing.lexeme_end lexbuf) }
| "to" { Token.To (Lexing.lexeme_start lexbuf, Lexing.lexeme_end lexbuf) }
| "break" { Token.Break (Lexing.lexeme_start lexbuf, Lexing.lexeme_end lexbuf) }
| "let" { Token.Let (Lexing.lexeme_start lexbuf, Lexing.lexeme_end lexbuf) }
| "in" { Token.In (Lexing.lexeme_start lexbuf, Lexing.lexeme_end lexbuf) }
| "end" { Token.End (Lexing.lexeme_start lexbuf, Lexing.lexeme_end lexbuf) }
| "function" { Token.Function (Lexing.lexeme_start lexbuf, Lexing.lexeme_end lexbuf) }
| "var" { Token.Var (Lexing.lexeme_start lexbuf, Lexing.lexeme_end lexbuf) }
| "type" { Token.Type (Lexing.lexeme_start lexbuf, Lexing.lexeme_end lexbuf) }
| "array" { Token.Array (Lexing.lexeme_start lexbuf, Lexing.lexeme_end lexbuf) }
| "if" { Token.If (Lexing.lexeme_start lexbuf, Lexing.lexeme_end lexbuf) }
| "then" { Token.Then (Lexing.lexeme_start lexbuf, Lexing.lexeme_end lexbuf) }
| "else" { Token.Else (Lexing.lexeme_start lexbuf, Lexing.lexeme_end lexbuf) }
| "do" { Token.Do (Lexing.lexeme_start lexbuf, Lexing.lexeme_end lexbuf) }
| "of" { Token.Of (Lexing.lexeme_start lexbuf, Lexing.lexeme_end lexbuf) }
| "nil" { Token.Nil (Lexing.lexeme_start lexbuf, Lexing.lexeme_end lexbuf) }
| eof { Token.EOF (Lexing.lexeme_start lexbuf, Lexing.lexeme_end lexbuf) }

{
  (* This part is inserted into the end of the generated file. *)
}
