/* Exercise 2 */

house_elf(dobby).
witch(hermione).
witch('McGonagall').
witch(rita_skeeter).
magic(X) :- house_elf(X).
magic(X) :- wizard(X).
magic(X) :- witch(X).

/*

  ?-  magic(house_elf). % error(undefined procedure wizard/1)
  ?-  wizard(harry). % error(undefined procedure wizard/1)
  ?-  magic(wizard). % error(undefined procedure wizard/1)
  ?-  magic('McGonagall'). % error(undefined procedure wizard/1)
  ?-  magic(Hermione). % true, Hermione = dobby

  magic(Hermione) -> house_elf(Hermione) -> house_elf(dobby)

  magic(Hermione) -> wizard(Hermione) -> error -> no more solutions

  Because of wizard error, line "magic(X) :- witch(X)." is never reached.

*/
