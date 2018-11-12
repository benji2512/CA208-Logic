/*FACTS*/
up(a,f).
up(b,g).
up(c,h).
up(d,i).
up(e,j).
up(f,k).
up(g,l).
up(h,m).
up(i,n).
up(j,o).
up(k,p).
up(l,q).
up(m,r).
up(n,s).
up(o,t).

right(b,a).
right(g,f).
right(l,k).
right(q,p).
right(c,b).
right(h,g).
right(m,l).
right(r,q).
right(d,c).
right(i,h).
right(n,m).
right(s,r).
right(e,d).
right(j,i).
right(o,n).
right(t,s).

/*RULES*/
north(X,Y) :- up(X,Y).
north(X,Y) :- up(X,Z), north(Z,Y).

northwest(X,Y) :- up(X,Z), right(Y,Z).
northwest(X,Y) :- up(X,Z), right(R,Z), northwest(R,Y).

west(X,Y) :- right(Y,X).
west(X,Y) :- right(Z,X), west(Z,Y).

southwest(X,Y) :- up(Y,Z), right(Z,X).
southwest(X,Y) :- up(Y,Z), right(Z,R), southwest(X,R).

south(X,Y) :- up(Y,X).
south(X,Y) :- up(Y,Z), south(X,Z).

southeast(X,Y) :- up(Y,Z), right(X,Z).
southeast(X,Y) :- up(Y,Z), right(R,Z), southeast(X,R).

east(X,Y) :- right(X,Y).
east(X,Y) :- right(X,Z), east(Z,Y).

northeast(X,Y) :- up(X,Z), right(Z,Y).
northeast(X,Y) :- up(X,Z), right(Z,R), northeast(R,Y).
