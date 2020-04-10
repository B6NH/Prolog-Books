/* Exercise 1 */

?- op(150,xf,isUpper).
?- op(150,xf,isLower).
?- op(150,fy,process).
?- op(150,xfy,toLower).


makeLower :-
  get0(R), process R.

isUpper(Z) :-
  Z > 64, Z < 91.

isLower(Z) :-
  not(isUpper(Z)).

toLower(Z,X) :-
  X is Z + 32.


process(10).

process(N) :-
  N isUpper, N toLower L, put(L), makeLower.

process(N) :-
  N isLower, put(N), makeLower.
