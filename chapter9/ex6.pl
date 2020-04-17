/* Exercise 6 */

pred1(L1,L) :-
  findall([A],member(A,L1),L).

pred2(L1,L) :-
  findall(pred(A,A),member(A,L1),L).

pred3(L1,L) :-
  findall([element,A],member(A,L1),L).
