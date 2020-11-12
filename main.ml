open Kuru

let print_token = function
  | Token.Num (n, start', end') -> (
    print_string "INT: content: ";
    print_int n;
    print_string " start: ";
    print_int start';
    print_string " end: ";
    print_int end';
    print_newline ()
  )
  | Token.EOF -> print_endline "EOF"

let () = 
  let tokens = Lexer.token (Lexing.from_channel stdin) in
  print_token tokens;;
