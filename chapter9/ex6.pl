/* Exercise 6 */

pred1(List,L) :-
  findall([S],member(S,List),L).

pred2(List,L) :-
  findall(pred(S,S),member(S,List),L).

pred3(List,L) :-
  findall(element(S),member(S,List),L).
