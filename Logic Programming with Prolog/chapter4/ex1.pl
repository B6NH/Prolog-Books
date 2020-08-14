/* Exercise 1 */

?- op(150,fy,cat).
?- op(150,fy,dog).
?- op(150,fy,large).
?- op(150,fy,small).
?- op(150,fy,large_dog).
?- op(150,fy,small_animal).
?- op(150,xfy,chases).


dog fido.
dog rover.
dog tom.
dog fred.

cat mary.
cat jane.
cat harry.
cat henry.
cat bill.
cat steve.


large fido.
large mary.
large fred.
large steve.
large jim.
large mike.
large henry.


small rover.
small jane.
small tom.

large_dog(X) :- dog X, large X.
small_animal A :- dog A, small A.
small_animal B :- cat B, small B.

X chases Y :-
  large_dog X, small_animal Y,
  write(X), write(' chases '), write(Y), nl.
