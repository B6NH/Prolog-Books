/* Exercise 5 */

swapfl1([H1|T1],[H2|T2]) :-
  append(M,[H2],T1),
  append(M,[H1],T2).

swapfl2([A,B],[B,A]).
swapfl2([H1,R|T1],[H2,R|T2]) :-
  swapfl2([H1|T1],[H2|T2]).
