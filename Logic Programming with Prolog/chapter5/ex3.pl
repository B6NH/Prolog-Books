/* Exercise 3 */

/* testa.txt, end_of_file is -1 */

readWrite(0) :- nl.
readWrite(X) :-
  X =\= 0, get(Z), write(Z), nl,
  N is X-1, readWrite(N).

readfile :-
  seeing(S), see('testa.txt'),
  readWrite(15), seen, see(S), !.
