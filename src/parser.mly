%{
  open Token
%}

%type <unit> program
%start program

%%

program:
  | Num program { print_int $1 }
