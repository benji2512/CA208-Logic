/*FACTS*/


/*RULES*/
myElem(X,[X|_]).
myElem(X,[_|Tail]) :-
	myElem(X, Tail).

myHead(X,[X|_]).

myLast(X,[X]).
myLast(X,[_|Tail]) :-
	myLast(X,Tail).

myTail(L,[_|L]).

myAppend([],L,L).
myAppend([X|L1],L2,[X|L3]):-
	myAppend(L1,L2,L3).

myReverse([],[]).
myReverse([X|Tail],Y) :-
	myReverse(Tail,R), myAppend(R,[X],Y).

myDelete()
