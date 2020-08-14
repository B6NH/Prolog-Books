/* Exercise 1 */

?- op(150,xf,isUpper).
?- op(150,xf,isLower).
?- op(150,fy,process).
?- op(150,xfy,toLower).


isUpper(Z) :-
  Z > 64, Z < 91.

isLower(Z) :-
  not(isUpper(Z)).

toLower(Z,X) :-
  X is Z + 32.

makeLower :-
  get0(R), process R.

process(10) :- nl.

process(X) :-
  (X isUpper, X toLower L, put(L), makeLower ;
   X isLower , put(X), makeLower), !.
