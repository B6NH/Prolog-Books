/* Exercise 1 */

?- op(150,xf,isUpper).
?- op(150,fy,process).
?- op(150,xfy,toLower).

makeLower :- get0(R), R =\= 13, process R.

isUpper(Z) :- Z > 64, Z < 91.

toLower(Z,X) :- X is Z + 32.

process(N) :-
  (N isUpper, N toLower L ; L = N), put(L), makeLower.
