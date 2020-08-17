/* Exercise 3 */

woman(vincent). % fact
woman(mia). % fact
man(jules). % fact
person(X) :-
  man(X) ; woman(X). % rule, head - person(X), goals - man(X) ; woman(X)
loves(X,Y) :-
  father(X,Y). % rule, head - loves(X,Y), goals - father(X,Y)
father(Y,Z) :-
  man(Y), son(Z,Y). % rule, head - father(Y,Z), goals - man(Y), son(Z,Y)
father(Y,Z) :-
  man(Y), daughter(Z,Y). % rule, head - father(Y,Z), goals - man(Y), daughter(Z,Y)
