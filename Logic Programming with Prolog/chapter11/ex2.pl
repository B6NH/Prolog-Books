/* Exercise 2 */


addArg(A,B,C) :-
  A =.. L, append(L,[B],M), C =.. M.
