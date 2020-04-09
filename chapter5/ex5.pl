/* Exercise 5 */

/* test1.txt, test2.txt */


compBoth(File1,File2) :-
  see(File1), read(First), First \== end_of_file,
  see(File2), read(Second),
  (First \== Second, write(different) ;
   First == Second, write(same)),
   nl, compBoth(File1,File2).


compare(File1,File2) :-
  seeing(S),(compBoth(File1,File2) ; seen, see(S)).
