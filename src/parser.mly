%{
  (* This part is inserted into the generated file *)
%}

%token <string> CHAR
%token EOF
%type <unit> program
%start program

%%

program:
| EOF { Printf.printf "parser: eof\n" }
| CHAR program { Printf.printf "parser: %s\n" $1 }
