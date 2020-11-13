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
  | Token.Ident(id, start', end') -> (
    print_string "Ident: content: ";
    print_string id;
    print_pos (start', end');
  )
  | Token.String(literal, start', end') -> (
    print_string "String: content: \"";
    print_string literal;
    print_string "\"";
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
  | Token.Comma (start', end') -> (
    print_string "Comma";
    print_pos (start', end');
  )
  | Token.Colon (start', end') -> (
    print_string "Colon";
    print_pos (start', end');
  )
  | Token.Semicolon (start', end') -> (
    print_string "Semicolon";
    print_pos (start', end');
  )
  | Token.LParen (start', end') -> (
    print_string "LParen";
    print_pos (start', end');
  )
  | Token.RParen (start', end') -> (
    print_string "RParen";
    print_pos (start', end');
  )
  | Token.LBrack (start', end') -> (
    print_string "LBrack";
    print_pos (start', end');
  )
  | Token.RBrack (start', end') -> (
    print_string "RBrack";
    print_pos (start', end');
  )
  | Token.LBrace (start', end') -> (
    print_string "LBrace";
    print_pos (start', end');
  )
  | Token.RBrace (start', end') -> (
    print_string "RBrace";
    print_pos (start', end');
  )
  | Token.Dot (start', end') -> (
    print_string "Dot";
    print_pos (start', end');
  )
  | Token.Plus (start', end') -> (
    print_string "Plus";
    print_pos (start', end');
  )
  | Token.Minus (start', end') -> (
    print_string "Minus";
    print_pos (start', end');
  )
  | Token.Asterisk (start', end') -> (
    print_string "Asterisk";
    print_pos (start', end');
  )
  | Token.Slash (start', end') -> (
    print_string "Slash";
    print_pos (start', end');
  )
  | Token.Equal (start', end') -> (
    print_string "Equal";
    print_pos (start', end');
  )
  | Token.LTGT (start', end') -> (
    print_string "LTGT";
    print_pos (start', end');
  )
  | Token.LTE (start', end') -> (
    print_string "LTE";
    print_pos (start', end');
  )
  | Token.GTE (start', end') -> (
    print_string "GTE";
    print_pos (start', end');
  )
  | Token.LT (start', end') -> (
    print_string "LT";
    print_pos (start', end');
  )
  | Token.GT (start', end') -> (
    print_string "GT";
    print_pos (start', end');
  )
  | Token.And (start', end') -> (
    print_string "And";
    print_pos (start', end');
  )
  | Token.Or (start', end') -> (
    print_string "Or";
    print_pos (start', end');
  )
  | Token.ColonEq (start', end') -> (
    print_string "ColonEq";
    print_pos (start', end');
  );;
