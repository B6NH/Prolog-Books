/* Exercise 2 */

process :-
  read(X),
  X \== end_of_file,
  writeq(X), write('.'), nl, process.

copyterms(Infile,Outfile) :-
  seeing(S), see(Infile), telling(T), tell(Outfile),
  (process ; seen, see(S), told, tell(T)).
