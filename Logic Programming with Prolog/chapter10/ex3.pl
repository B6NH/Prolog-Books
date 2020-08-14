/* Exercise 3 */


replace(S,X) :-
  name(S,[_|R]), W = [63|R], name(X,W).
