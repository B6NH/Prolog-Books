/* Exercise 5 */

wizard(ron).
wizard(X) :-
  hasBroom(X), hasWand(X).
hasWand(harry).
quidditchPlayer(harry).
hasBroom(X) :-
  quidditchPlayer(X).

/*

  1. wizard(ron) - true
  2. witch(ron) - error
  3. wizard(hermione) - false
  4. witch(hermione) - error
  5. wizard(harry) - true
  6. wizard(Y) - ron, harry
  7. witch(Y) - error

*/
