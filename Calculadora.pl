% Caso base: se for um número, a avaliação é ele mesmo.
eval(X, X) :- number(X).

% Regras recursivas para cada operação aritmética:

% Soma
eval(X+Y, R) :-
    eval(X, A),
    eval(Y, B),
    R is A + B.

% Subtração
eval(X-Y, R) :-
    eval(X, A),
    eval(Y, B),
    R is A - B.

% Multiplicação
eval(X*Y, R) :-
    eval(X, A),
    eval(Y, B),
    R is A * B.

% Divisão segura
eval(X/Y, R) :-
    eval(Y, B),
    B =\= 0,
    eval(X, A),
    R is A / B.

% Caso de erro: divisão por zero
eval(_/Y, _) :-
    eval(Y, 0),
    write('Erro: divisao por zero!'), nl,
    fail.
