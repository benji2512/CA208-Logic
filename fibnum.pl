/*FACTS*/
fib(0,1).
fib(1,1).

/*RULES*/
fib(X,N) :- X1 is X-1, X2 is X-2, fib(X1,N1), fib(X2,N2), N is N1+N2.