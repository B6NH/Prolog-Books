/* Exercise 2 */

:- dynamic word/2.

readWord(InStream,W) :-
  get_code(InStream,Char),
  checkCharAndReadRest(Char,Chars,InStream),
  atom_codes(W,Chars).

checkCharAndReadRest(10,[],_):-  !.

checkCharAndReadRest(32,[],_):-  !.

checkCharAndReadRest(-1,[],_):-  !.

checkCharAndReadRest(end_of_file,[],_):-  !.

checkCharAndReadRest(Char,[Char|Chars],InStream):-
     get_code(InStream,NextChar),
     checkCharAndReadRest(NextChar,Chars,InStream).


addWord(W) :-
  word(W,F),
  !,
  retract(word(W,F)),
  Nf is F + 1,
  assert(word(W,Nf)).

addWord(W) :-
  assert(word(W,1)).

readWords(Stream) :-
  at_end_of_stream(Stream).

readWords(Stream) :-
  \+ at_end_of_stream(Stream),
  readWord(Stream,W),
  addWord(W),
  readWords(Stream).

go :-
  open('words',read,Str),
  retractall(word(_,_)),
  readWords(Str),
  close(Str), !.
