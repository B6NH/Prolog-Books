/* Exercise 2 */

avg(X,Y,M) :- M is (X+Y)/2.
sqr(X,Y,M) :- M is sqrt(X*Y).

lrg(A, B, C) :- avg(A,B,M), sqr(A,B,Z), (M >= Z, C = M ; M < Z, C = Z).
