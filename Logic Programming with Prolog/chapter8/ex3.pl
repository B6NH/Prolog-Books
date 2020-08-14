/* Exercise 3 */

?- dynamic(animal/3).

animal(john,cat,blue). animal(lisa,cat,white).
animal(mark,lion,red). animal(jenny,dog,orange).
animal(lucy,wolf,black). animal(alice,dog,yellow).
animal(monica,bird,green). animal(amy,cat,purple).


remove2 :-
  retractall(animal(_,dog,_)),
  retractall(animal(_,cat,_)).
