/* Exercise 2 */

isNewline(M) :- M == 10.
isQuestion(M) :- M == 63.

drop :-
  get0(Z), (isNewline(Z) ; drop).

readChars :-
  get0(X), (isQuestion(X), drop, nl, ! ;
            isNewline(X), nl, ! ;
            put(X), readChars).
