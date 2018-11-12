split([],[],[]).

split([X|XL],[X|PL],N) :- X >= 0, split(XL,PL,N), !.

split([X|XL],P,[X|NL]) :- split(XL,P,NL), !.
