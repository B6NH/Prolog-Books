/* Exercise 1 */

go :-
  B = 4, A is B * 2,
  open('hogwart.houses',write,Str),
  tab(Str,A),
  write(Str,gryffindor),
  nl(Str),
  write(Str,hufflepuff),
  tab(Str,B),
  write(Str,ravenclaw),
  nl(Str),
  tab(Str,A),
  write(Str,slytherin),
  close(Str).
