/* Exercise 1 */

factorial(1,1) :- !.

factorial(N,Nfact) :-
  N1 is N-1, factorial(N1,Nfact1), Nfact is N*Nfact1.
