/* Exercise 3 */

termtype(T,atom) :-
  atom(T).

termtype(T,number) :-
  number(T).

termtype(T,constant) :-
  atom(T) ;
  number(T).

termtype(T,variable) :-
  var(T).

termtype(X, simple_term) :-
  simple_term(X).

termtype(X, complex_term) :-
  complex_term(X).

termtype(_, term).

simple_term(X) :-
  var(X) ;
  atom(X) ;
  number(X).

complex_term(X) :-
  nonvar(X),
  functor(X,_,A),
  A > 0.
