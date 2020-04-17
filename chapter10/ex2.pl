/* Exercise 2 */

remove_final(S,X) :-
  name(S,L), reverse(L,Z),
  remove_spaces(Z,G), reverse(G,T),
  name(X,T), !.


remove_spaces([32|R],Z) :-
  remove_spaces(R,Z).

remove_spaces(Z,Z).
