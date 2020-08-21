/* Exercise 6 */

prefix(P,L) :-
  append(P,_,L).

suffix(S,L) :-
  append(_,S,L).

sublist(SubL,L) :-
  suffix(S,L),
  prefix(SubL,S).

zebra(X,S) :-
  length(S,3), Sn = [_,_,snail],
  sublist([Sn,[japanese,_,_]],S),
  sublist([Sn,[_,blue,_]],S),
  member([english,red,_],S),
  member([spanish,_,jaguar],S),
  member([X,_,zebra],S).
