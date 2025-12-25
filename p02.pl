/* - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
P02 (*) Find the last but one element of a list.
Example:
?- my_last_but_one(X,[a,b,c,d]).
X = c
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - */

%?- my_last_but_one(X,[a,b,c,d]).
%@    X = c
%@ ;  false.
%?- my_last_but_one(X, [a]).
%@    false.
my_last_but_one(X, [X, _]).
my_last_but_one(X, [_|T]) :- my_last_but_one(X,T).
