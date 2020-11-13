open Kuru

let print_pos (start', end') =
  print_string " start: ";
  print_int start';
  print_string " end: ";
  print_int end';;

let print_token = function
  | Token.Num (n, start', end') -> (
    print_string "INT: content: ";
    print_int n;
    print_pos (start', end');
  )
  | Token.While (start', end') -> (
    print_string "While";
    print_pos (start', end');
  )
  | Token.For (start', end') -> (
    print_string "For";
    print_pos (start', end');
  )
  | Token.To (start', end') -> (
    print_string "To";
    print_pos (start', end');
  )
  | Token.Break (start', end') -> (
    print_string "Break";
    print_pos (start', end');
  )
  | Token.Let (start', end') -> (
    print_string "Let";
    print_pos (start', end');
  )
  | Token.In (start', end') -> (
    print_string "In";
    print_pos (start', end');
  )
  | Token.End (start', end') -> (
    print_string "End";
    print_pos (start', end');
  )
  | Token.Function (start', end') -> (
    print_string "Function";
    print_pos (start', end');
  )
  | Token.Var (start', end') -> (
    print_string "Var";
    print_pos (start', end');
  )
  | Token.Type (start', end') -> (
    print_string "Type";
    print_pos (start', end');
  )
  | Token.Array (start', end') -> (
    print_string "Array";
    print_pos (start', end');
  )
  | Token.If (start', end') -> (
    print_string "If";
    print_pos (start', end');
  )
  | Token.Then (start', end') -> (
    print_string "Then";
    print_pos (start', end');
  )
  | Token.Else (start', end') -> (
    print_string "Else";
    print_pos (start', end');
  )
  | Token.Do (start', end') -> (
    print_string "Do";
    print_pos (start', end');
  )
  | Token.Of (start', end') -> (
    print_string "Of";
    print_pos (start', end');
  )
  | Token.Nil (start', end') -> (
    print_string "Nil";
    print_pos (start', end');
  )
  | Token.EOF (start', end') -> (
    print_string "EOF";
    print_pos (start', end');
  );
  print_newline();;

let () = 
  let tokens = Lexer.token (Lexing.from_channel stdin) in
  print_token tokens;;
