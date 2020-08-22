/* Exercise 4 */

groundterm(X) :-
  nonvar(X),
  X =.. [_|B],
  testv(B).

testv([]).
testv([A|B]) :-
  groundterm(A),
  testv(B).
