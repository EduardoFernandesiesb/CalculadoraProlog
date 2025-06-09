eval(X, X) :- number(X).

% Regras recursivas para cada operacao:
eval(X+Y, R) :- eval(X, A), eval(Y, B), R is A+B.
eval(X-Y, R) :- eval(X, A), eval(Y, B), R is A-B.
eval(X*Y, R) :- eval(X, A), eval(Y, B), R is A*B.
eval(X/Y, R) :- eval(X, A), eval(Y, B), R is A/B.