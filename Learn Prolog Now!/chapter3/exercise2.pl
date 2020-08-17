/* Exercise 2 */

directlyin(katarina,olga).
directlyin(olga,natasha).
directlyin(natasha,irina).

in(A,B) :-
  directlyin(A,B).
in(A,B) :-
  directlyin(A,Z), in(Z,B).
