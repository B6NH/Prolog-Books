/* Exercise 5 */

/* test1.txt, test2.txt */


proc(T,T) :- T == T, write(same).
proc(T1,T2) :- T1 \== T2, write(different).

readFile(Name,L) :-
  see(Name), read(L), L \== end_of_file.

compBoth(File1,File2) :-
  readFile(File1,A), readFile(File2,B),
  proc(A,B), nl, compBoth(File1,File2).

compare(File1,File2) :-
  seeing(S),(compBoth(File1,File2) ; seen, see(S)).
