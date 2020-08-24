/* Exercise 2 */

/* Program checks if the number is positive, negative or zero. */

class(Number,positive) :-
  Number  >  0, !.
class(0,zero) :- !.
class(Number,negative) :-
  Number  <  0.
