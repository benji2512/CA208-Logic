class(0,zero) :- !.

class(N,positive) :- N > 0, !.

class(N,negative) :- N < 0, !.
