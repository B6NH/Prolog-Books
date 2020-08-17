/* Exercise 1 */

child(anne,bridget).
child(bridget,caroline).
child(caroline,donna).
child(donna,emily).

descend(X,Y) :-
  child(X,Y).

/*

descend(X,Y) :-
  child(X,Z), descend(Z,Y).

*/

/* New predicate can cause "Out of local stack" error */
descend(X,Y) :-
  descend(X,Z), descend(Z,Y).
