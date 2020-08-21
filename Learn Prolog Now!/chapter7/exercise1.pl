/* Exercise 1 */

s  -->  foo,bar,wiggle.
foo  -->  [choo].
foo  -->  foo,foo.
bar  -->  mar,zar.
mar  -->  me,my.
me  -->  [i].
my  -->  [am].
zar  -->  blar,car.
blar  -->  [a].
car  -->  [train].
wiggle  -->  [toot].
wiggle  -->  wiggle,wiggle.

/*

  s(A, D) :-
    foo(A, B),
    bar(B, C),
    wiggle(C, D).

  foo([choo|A], A).

  foo(A, C) :-
  	foo(A, B),
  	foo(B, C).

  bar(A, C) :-
  	mar(A, B),
  	zar(B, C).

  mar(A, C) :-
  	me(A, B),
  	my(B, C).

  me([i|A], A).

  my([am|A], A).

  zar(A, C) :-
  	blar(A, B),
  	car(B, C).

  blar([a|A], A).

  car([train|A], A).

  wiggle([toot|A], A).

  wiggle(A, C) :-
	  wiggle(A, B),
	  wiggle(B, C).


  X = [choo, i, am, a, train, toot] ;
  X = [choo, i, am, a, train, toot, toot] ;
  X = [choo, i, am, a, train, toot, toot, toot] ;

*/
