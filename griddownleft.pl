/*FACTS*/
down(f,a).
down(g,b).
down(h,c).
down(i,d).
down(j,e).
down(k,f).
down(l,g).
down(m,h).
down(n,i).
down(o,j).
down(p,k).
down(q.l).
down(r,m).
down(s,n).
down(t,o).

left(a,b).
left(f,g).
left(k,l).
left(p,q).
left(b,c).
left(g,h).
left(l,m).
left(q,r).
left(c,d).
left(h,i).
left(m,n).
left(r,s).
left(d,e).
left(i,j).
left(n,o).
left(s,t).

/*RULES*/
north(X,Y) :- down(Y,X).
north(X,Y) :- down(Z,Y), north(X,Z).

northwest(X,Y) :- down(Y,Z), left(X,Z).
northwest(X,Y) :- down(Y,Z), left(L,Z), northwest(X,L).

west(X,Y) :- left(X,Y).
west(X,Y) :- left(X,Z), west(Z,Y).

southwest(X,Y) :- down(X,Z), left(Z,Y).
southwest(X,Y) :- down(X,Z), left(Z,R), southwest(R,Y).

south(X,Y) :- down(X,Y).
south(X,Y) :- down(X,Z), south(Z,Y).

southeast(X,Y) :- down(X,Z), left(Y,Z).
southeast(X,Y) :- down(X,Z), left(L,Z), southeast(L,Y).

east(X,Y) :- left(Y,X).
east(X,Y) :- left(Z,Y), east(X,Z).

northeast(X,Y) :- down(Z,X), left(Y,Z).
northeast(X,Y) :- down(Z,X), left(L,Z), northeast(L,Y).
