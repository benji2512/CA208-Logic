%Empty tree
emptyBT :- nil.

%Non-empty tree
bt(T1,N,T2) :- T1 =< N, T2 > N.

addnode(nil,X1,bt(nil,X1,nil)).
addnode(bt(Left1,Root1,Right1),X1,bt(NewLeft1,Root1,Right1)) :- X1 =< Root1, addnode(Left1,X1,NewLeft1).
addnode(bt(Left1,Root1,Right1),X1,bt(Left1,Root1,NewRight1)) :- addnode(Right1,X1,NewRight1).

%tests for this
%addnode(bt(bt(bt(nil,4,nil),2,bt(nil,5,nil)),1,bt(nil,3,bt(bt(nil,7,nil),6,nil))),8,Result).
%addnode(bt(bt(nil,2,nil),1,nil),3,Result).

%tests for other(Above)
%insert(8,bTree(1,bTree(2,bTree(4,nil,nil),bTree(5,nil,nil)),bTree(3,nil,bTree(6,bTree(7,nil,nil),nil))),result).
preorder(bTree(1,btree(2,bTree(4,bTree(7,nil,nil)),nil),bTree(5,nil,nil),btree(3,bTree(6,bTree(8,nil,nil),bTree(9,nil,nil),nil))),[1,2,4,7,5,3,6,8,9])
