open Kuru

let () =
  Parser.program Lexer.token (Lexing.from_channel stdin)
