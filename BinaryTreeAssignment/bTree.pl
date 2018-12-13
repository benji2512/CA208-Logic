/**/
%-->Above only needed for vim syntax highlighting

%Empty tree
emptyBT :- nil.

%Non-empty tree
bTree(N,T1,T2) :-
   T1 =< N,
   T2 > N.

%Check if element is in tree
search(bTree(X,_,_),X).
search(bTree(Root,Left,_),X) :-
   X =< Root,
   search(Left,X).
search(bTree(_,_,Right),X) :-
   search(Right,X).

%Insert element into tree
%insert(Value, current Tree, new Tree)
insert(X,nil,bTree(X,nil,nil)).
insert(X,bTree(Root,Left,Right),bTree(Root,NewLeft,Right)) :-
   X =< Root,
   insert(X,Left,NewLeft).
insert(X,bTree(Root,Left,Right),bTree(Root,Left,NewRight)) :-
   insert(X,Right,NewRight).

%Preorder Traversal -> Left Tree First then right tree
preorder(bTree(X,Left,Right),[X|Nodes]) :-
   preorder(Left,LeftNodes),
   preorder(Right,RightNodes),
   append(LeftNodes,RightNodes,Nodes).
preorder(nil,[]).

%Inorder Traversal ->
inorder(nil,[]).
inorder(bTree(X,Left,Right),Nodes) :-
   inorder(Left,LeftNodes),
   inorder(Right,RightNodes),
   append(LeftNodes,[X|RightNodes],Nodes).

%Height of Binary tree
height(bTree(_,nil,nil),1).
height(bTree(_,Left,Right),TotalHeight) :-
    height(Left,TotalLeft),
    height(Right,TotalRight),
    TotalHeight is max(TotalLeft,TotalRight) + 1.
