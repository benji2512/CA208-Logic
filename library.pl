/* FACTS */

book(illiad,homer,study,500).
book(c,richie,study,150).
book(nt_bible,sams,reference,480).
book(monty_python,cleese,comedy,300).
book(origin,brown,fiction,1000).

/* Relationships */
buildLibrary(Lib) :- findall(book(Title,Author,Genre,Size), book(Title,Author,Genre,Size), Lib).

is_literacy(B) :- B = book(_,_,X,_), X == drama.
literacy(_,[H|T]) :- is_literacy(H) -> (print(H),nl,literacy(_,T)); literacy(_,T).

is_revision(B) :- B = book(_,_,X,Y), (X=study;X=reference), Y>300.
revision(_,[H|T]) :- is_revision(H) -> (print(H),nl,revision(_,T)); revision(_,T).

is_holidays(B) :- B = book(_,_,X,Y), (X\=study;X\=reference), Y<400.
holidays(_,[H|T]) :- is_holidays(H) -> (print(H),nl,holidays(_,T)); holidays(_,T).

is_leisure(B) :- B = book(_,_,X,_), (X=comedy;X=fiction).
leisure(_,[H|T]) :- is_leisure(H) -> (print(H),nl,leisure(_,T)); leisure(_,T).
