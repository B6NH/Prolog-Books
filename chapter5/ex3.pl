/* Exercise 3 */

/* end_of_file is -1 */

readWrite(X) :- X =\= 0, get(Z), write(Z), nl, readWrite(X-1).

readfile :-
  seeing(S), see('testa.txt'),
  readWrite(15),
  seen, see(S).
