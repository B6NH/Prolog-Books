/* Exercise 2 */

/*
	Description:
		- ancestor(louise,Desc).
		- check ancestor(X,Y) :- parent(X,Y).
		- found ancestor(louise,caroline).
		- check ancestor(X,Y) :- parent(X,Z),ancestor(Z,Y).
		- louise is parent of caroline so check ancestor caroline.
		- found ancestor(louise,david) and ancestor(louise,janet).
		- no more solutions.


	Output:
		Desc = caroline
		Desc = david
		Desc = janet
		false.
*/
