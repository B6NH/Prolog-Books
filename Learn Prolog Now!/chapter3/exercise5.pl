/* Exercise 5 */

/* tree(tree(leaf(1),leaf(2)),leaf(4)) */

swap(leaf(A),leaf(A)).

swap(tree(A,B),tree(C,D)) :-
  swap(A,D),
  swap(B,C).
