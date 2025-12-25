/* - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
P04 (*) Find the number of elements of a list.
Example:
?- my_length([a,b,c,d], X).
X = 4
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - */

%?- my_length([a,b,c,d], X).
%@    X = 4.
my_length([], 0).
my_length([_|T], N) :-
    my_length(T, Nm),
    N is Nm + 1.
