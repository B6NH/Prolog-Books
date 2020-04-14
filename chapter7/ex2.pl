/* Exercise 2 */

readNumber(N) :-
  write('Enter next number: '),
  flush_output, read(N).

checkNumber(N,Type) :- isEven(N), Type = 'even', !.
checkNumber(_,'odd').

isEven(N) :- N/2 =:= N//2.

read_and_check(N,Type) :-
  readNumber(N), checkNumber(N,Type).


go :-
  prompt(_, ''), repeat,
  read_and_check(N,Type),
  write(N), write(' is '),
  write(Type), nl, N =:= 100.
