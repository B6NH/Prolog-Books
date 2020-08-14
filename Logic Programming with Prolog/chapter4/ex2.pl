/* Exercise 2 */

avg(X,Y,M) :- M is (X+Y)/2.
sqr(X,Y,M) :- M is sqrt(X*Y).

lrg(A, B) :-
  avg(A,B,M),
  write('Average is '), write(M), nl,
  sqr(A,B,Z),
  write('Sqr is '), write(Z), nl,
  write('Larger is '),
  (M >= Z, C = M ; M < Z, C = Z),
  write(C), !.
