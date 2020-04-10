/* Exercise 2 */

isValid(X) :-
  X =\= 63, X =\= 10.

readChars :-
  get0(X), isValid(X), put(X), readChars.
