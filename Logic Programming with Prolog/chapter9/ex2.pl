/* Exercise 2 */

inc([],[]).
inc([First|Rest],[First2|Rest2]) :-
 First2 is First + 1, inc(Rest,Rest2).
