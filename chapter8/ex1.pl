/* Exercise 1 */

?- dynamic(animal/1).

go :-
  prompt(_, ''), add_data.

save(N) :- animal(N), !.
save(N) :- assertz(animal(N)).

process(end).
process(N) :-
  N \= end, save(N), add_data.

add_data :-
  write('Enter animal name: '),
  flush_output, read(Name), process(Name).
