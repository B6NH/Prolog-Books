/* Exercise 5 */

loves(marsellus,mia).
loves(vincent,mia).

jealous(X,Y) :-
  loves(X,Z),
  loves(Y,Z),
  \+ X = Y.
