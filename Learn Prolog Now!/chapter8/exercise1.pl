/* Exercise 1 */

s(T) --> np(T), vp(T).

np(T) --> det(T), n(T).

vp(T) --> v(T), np(_).
vp(T) --> v(T).

det(_) --> [the].
det(sin) --> [a].

n(sin) --> [woman].
n(plu) --> [women].
n(sin) --> [man].
n(plu) --> [men].
n(sin) --> [apple].
n(sin) --> [pear].

v(sin) --> [eats].
v(plu) --> [eat].
v(sin) --> [knows].
v(plu) --> [know].
