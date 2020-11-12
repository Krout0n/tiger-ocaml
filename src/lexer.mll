{
  (* This part is inserted into the head of the generated file. *)
}

rule token = parse
| ['\x00'-'\xff'] { (* This means 'any byte' *) 
    Printf.printf "lexer: %s\n" (Lexing.lexeme lexbuf);
    Parser.CHAR (Lexing.lexeme lexbuf)
  }
| eof {
    Printf.printf "lexer: eof\n";
    Parser.EOF
  }

{
  (* This part is inserted into the end of the generated file. *)
}
