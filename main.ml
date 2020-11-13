open Tiger

let is_eof = function
  | Token.EOF (_, _) -> true
  | _ -> false;;

let () = 
  let still_loop = ref true in
  while !still_loop do
    let token = Lexer.token (Lexing.from_channel stdin) in
    Print.print_token token;
    print_newline();
    still_loop := not (is_eof token)
  done;;
