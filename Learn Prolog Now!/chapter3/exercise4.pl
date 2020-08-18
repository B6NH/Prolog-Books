/* Exercise 4 */

greater_than(succ(_),0).
greater_than(succ(A),succ(B)) :-
  greater_than(A,B).
