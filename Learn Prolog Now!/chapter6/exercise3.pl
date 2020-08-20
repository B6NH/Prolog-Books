/* Exercise 3 */

toptail([_|B],C) :-
  append(C,[_],B).
