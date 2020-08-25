/* Exercise 3 */

:- dynamic sigmares/2.

sigma(1,1) :- !.

sigma(A,X) :-
  sigmares(A,X), !.

sigma(A,X) :-
  B is A - 1,
  sigma(B,Z),
  X is Z + A,
  assert(sigmares(A,X)).
