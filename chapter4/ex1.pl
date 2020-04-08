/* Exercise 1 */

dog(fido). large(fido).
cat(mary). large(mary).
dog(rover). small(rover).
cat(jane). small(jane).
dog(tom). small(tom).
cat(harry).
dog(fred). large(fred).
cat(henry). large(henry).
cat(bill).
cat(steve). large(steve).
large(jim).
large(mike).

large_dog(X) :- dog(X), large(X).
small_animal(A) :- dog(A), small(A).
small_animal(B) :- cat(B), small(B).

chases(X,Y) :-
  large_dog(X), small_animal(Y),
  write(X), write(' chases '), write(Y), nl.

?- op(150,fy,cat).
?- op(150,fy,dog).
?- op(150,fy,large).
?- op(150,fy,small).
?- op(150,fy,large_dog).
?- op(150,fy,small_animal).
?- op(150,xfy,chases).
