/* Exercise 1 */

square(X,O) :- O is X*X.

squares(T,T) :- square(T,S), write(S).

squares(From,To) :-
  From =\= To, square(From,P), write(P), nl,
  S is From + 1, squares(S,To).
