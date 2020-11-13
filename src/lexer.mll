let digits = ['0'-'9']
let spaces = [' ' '\n' '\t']

rule token = parse
  | spaces+ { token lexbuf }
  | digits+ {
    Token.Num ((int_of_string (Lexing.lexeme lexbuf)), Lexing.lexeme_start lexbuf, Lexing.lexeme_end lexbuf)
  }
  | "/*" {comment 1 lexbuf}
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
  | "," { Token.Comma (Lexing.lexeme_start lexbuf, Lexing.lexeme_end lexbuf) }
  | ":" { Token.Colon (Lexing.lexeme_start lexbuf, Lexing.lexeme_end lexbuf) }
  | ";" { Token.Semicolon (Lexing.lexeme_start lexbuf, Lexing.lexeme_end lexbuf) }
  | "(" { Token.LParen (Lexing.lexeme_start lexbuf, Lexing.lexeme_end lexbuf) }
  | ")" { Token.RParen (Lexing.lexeme_start lexbuf, Lexing.lexeme_end lexbuf) }
  | "[" { Token.LBrack (Lexing.lexeme_start lexbuf, Lexing.lexeme_end lexbuf) }
  | "]" { Token.RBrack (Lexing.lexeme_start lexbuf, Lexing.lexeme_end lexbuf) }
  | "{" { Token.LBrace (Lexing.lexeme_start lexbuf, Lexing.lexeme_end lexbuf) }
  | "}" { Token.RBrace (Lexing.lexeme_start lexbuf, Lexing.lexeme_end lexbuf) }
  | "." { Token.Dot (Lexing.lexeme_start lexbuf, Lexing.lexeme_end lexbuf) }
  | "+" { Token.Plus (Lexing.lexeme_start lexbuf, Lexing.lexeme_end lexbuf) }
  | "-" { Token.Minus (Lexing.lexeme_start lexbuf, Lexing.lexeme_end lexbuf) }
  | "*" { Token.Asterisk (Lexing.lexeme_start lexbuf, Lexing.lexeme_end lexbuf) }
  | "/" { Token.Slash (Lexing.lexeme_start lexbuf, Lexing.lexeme_end lexbuf) }
  | "=" { Token.Equal (Lexing.lexeme_start lexbuf, Lexing.lexeme_end lexbuf) }
  | "<>" { Token.LTGT (Lexing.lexeme_start lexbuf, Lexing.lexeme_end lexbuf) }
  | "<=" { Token.LTE (Lexing.lexeme_start lexbuf, Lexing.lexeme_end lexbuf) }
  | ">=" { Token.GTE (Lexing.lexeme_start lexbuf, Lexing.lexeme_end lexbuf) }
  | "<" { Token.LT (Lexing.lexeme_start lexbuf, Lexing.lexeme_end lexbuf) }
  | ">" { Token.GT (Lexing.lexeme_start lexbuf, Lexing.lexeme_end lexbuf) }
  | "&" { Token.And (Lexing.lexeme_start lexbuf, Lexing.lexeme_end lexbuf) }
  | "|" { Token.Or (Lexing.lexeme_start lexbuf, Lexing.lexeme_end lexbuf) }
  | ":=" { Token.ColonEq (Lexing.lexeme_start lexbuf, Lexing.lexeme_end lexbuf) }
  | eof { Token.EOF (Lexing.lexeme_start lexbuf, Lexing.lexeme_end lexbuf) }
and comment level = parse
  | "*/" { if level = 1 then token lexbuf else comment (level - 1) lexbuf }
  | "/*" { comment (level + 1) lexbuf }
  | eof { Token.EOF (Lexing.lexeme_start lexbuf, Lexing.lexeme_end lexbuf) }
  | _ { comment level lexbuf }
