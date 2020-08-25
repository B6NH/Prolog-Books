/* Exercise 1 */

/*

  % assert(q(a,b)),  assertz(q(1,2)),  asserta(q(foo,blug)).

  q(foo, blug).
  q(a, b).
  q(1, 2).

  % retract(q(1,2)),  assertz(  (p(X)  :-    h(X))  ).

  q(foo, blug).
  q(a, b).
  p(A) :- h(A).

  % retractall(q(_,_)).

  p(A) :- h(A).

*/
