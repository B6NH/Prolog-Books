/* Exercise 4 */


accRev([],A,A).

accRev([H|T],A,R) :-
  accRev(T,[H|A],R).

rev(L,R) :-
  accRev(L,[],R).


last1(List,X) :-
  rev(List,[X|_]).

last2([X],X).
last2([_|T],X) :-
  last2(T,X).
