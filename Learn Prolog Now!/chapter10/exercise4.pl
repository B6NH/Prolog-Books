/* Exercise 4 */

directTrain(saarbruecken,dudweiler).
directTrain(forbach,saarbruecken).
directTrain(freyming,forbach).
directTrain(stAvold,freyming).
directTrain(fahlquemont,stAvold).
directTrain(metz,fahlquemont).
directTrain(nancy,metz).

conn(A,B) :-
  directTrain(A,B).

conn(A,B) :-
  directTrain(B,A).

route(A,A,Acc,[A|Acc]).

route(A,B,Acc,Rs) :-
  conn(A,Z),
  \+ member(A,Acc),
  route(Z,B,[A|Acc],Rs).

route(A,B,Rs) :-
  route(B,A,[],Rs).
