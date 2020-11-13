open Tiger

let is_eof = function
  | Token.EOF (_, _) -> true
  | _ -> false;;

let parse filename =
  let file = open_in filename in
  let lexbuf = Lexing.from_channel file in
  let rec aux () =
    let lexer = Lexer.token lexbuf in
    let token = lexer in
    Print.print_token lexer;
    print_newline();
    if is_eof token then () else aux ()
  in
    aux ()

let () = parse (Sys.argv.(1))
