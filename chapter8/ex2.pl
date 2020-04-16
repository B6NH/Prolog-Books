/* Exercise 2 */

animal(cat). animal(dog). animal(lion).
animal(wolf). animal(bird).



process(X) :- write(X), nl, fail.

display_animals :- animal(X), process(X).

display_animals.
