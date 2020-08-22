/* Exercise 5 */

:-  op(300,  xfx,  [are,  is_a]).
:-  op(300,  fx,  likes).
:-  op(200,  xfy,  and).
:-  op(100,  fy,  famous).


are(_,_).
is_a(_,_).
likes(_).
and(_,_).
famous(_).

/*

 X  is_a  witch. % correct
 harry and ron and hermione are friends. % correct
 harry  is_a  wizard  and  likes  quidditch % error
 dumbledore  is_a  famous  wizard % correct



 is_a(_,witch)
 are(and(harry,and(ron,hermione)),friends)
 is_a(dumbledore,famous(wizard))

*/
