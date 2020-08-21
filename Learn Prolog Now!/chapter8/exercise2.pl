/* Exercise 2 */

/*
  kanga(V,R,Q)  -->  roo(V,R),jumps(Q,Q),{marsupial(V,R,Q)}.
*/

kanga(A, B, D, C, F) :-
	roo(A, B, C, E),
	jumps(D, D, E, G),
	marsupial(A, B, D),
	F = G.
