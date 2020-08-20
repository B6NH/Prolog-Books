/* Exercise 3 */

addone([],[]).
addone([A|B],[C|D]) :-
  C is A + 1,
  addone(B,D).
