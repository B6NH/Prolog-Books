/* Exercise 2 */

inc([],[]).
inc([A|B],[C|D]) :-
 C is A + 1, inc(B,D).
