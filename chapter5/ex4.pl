/* Exercise 4 */

/* in1.txt + in2.txt = out.txt */

readWrite :-
  read(X), X \== end_of_file,
  writeq(X), write('.'), nl, readWrite.

combine(File1,File2,Output) :-
  seeing(S), see(File1), telling(T), tell(Output),
  (readWrite ;
   seen, see(File2), readWrite ;
   write(end), write('.'),
   seen, see(S), told, tell(T)).
