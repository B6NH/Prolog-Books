/* Exercise 4 */


readWrite :-
  read(X), X \== end_of_file, write(X), nl, readWrite.

combine(File1,File2,Output) :-
  seeing(S), see(File1), telling(T), tell(Output),
  (readWrite ;
   seen, see(File2), readWrite ;
   write(end), seen, see(S), told, tell(T)).
