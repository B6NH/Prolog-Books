/* Exercise 1 */


?- op(710,xfx,iss).
?- op(710,xfx,sis).

?- op(200,yfx,**).
?- op(200,yfx,++).

?- op(200,yfx,and).
?- op(200,yfx,or).

?- op(200,xf,!).

?- op(200,fx,head).
?- op(200,fx,tail).


factorial(1,1) :- !.
factorial(X,Z) :-
  N is X - 1, factorial(N,S), Z is X * S.

S iss head [S|_] :- !.

S iss tail [_|S] :- !.

S iss S1 ++ S2 :-
  convert(S1,A), convert(S2,B), join2(A,B,S), !.

Y iss A ** B :-
  A1 iss A, B1 iss B, Y is A1 * A1 + B1 * B1, !.

Y iss sqrt(A) :-
  A1 iss A, Y is sqrt(A1), !.

Y iss N! :-
  N1 iss N,factorial(N1,Y), !.

Y iss A + B :-
  A1 iss A, B1 iss B, Y is A1 + B1, !.

Y iss A - B :-
  A1 iss A, B1 iss B, Y is A1 - B1, !.

Y iss A * B :-
  A1 iss A, B1 iss B, Y is A1 * B1, !.

Y iss A / B :-
  A1 iss A, B1 iss B, Y is A1 / B1, !.

Y iss A // B :-
  A1 iss A, B1 iss B, Y is A1 // B1, !.

Y iss A ^ B :-
  A1 iss A, B1 iss B, Y is A1 ^ B1, !.

Y iss +A :- Y iss A, !.

Y iss -A :- A1 iss A, Y is -A1, !.

Y iss X :- Y is X, !.


Y sis A and B :-
  A1 sis A, B1 sis B,
  findall(X,(member(X,A1),member(X,B1)),Y), !.

Y sis A or B :-
  A1 sis A, B1 sis B,
  findall(X,(member(X,A1);(member(X,B1), not(member(X,A1)))),Y), !.

Y sis A-B :-
  A1 sis A, B1 sis B,
  findall(X,(member(X,A1),not(member(X,B1))),Y), !.

A sis A :- !.


convert(X,X) :- atom(X).
convert(X,X1) :- X1 iss X.


join2(String1,String2,Newstring) :-
  name(String1,L1), name(String2,L2),
  append(L1,L2,Newlist), name(Newstring,Newlist).
