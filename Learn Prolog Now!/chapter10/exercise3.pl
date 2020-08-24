/* Exercise 3 */

split([],[],[]).

split([A|B],[A|D],F) :-
  0 =< A,
  !,
  split(B,D,F).

split([A|B],F,[A|D]) :-
  0 > A,
  split(B,F,D).
