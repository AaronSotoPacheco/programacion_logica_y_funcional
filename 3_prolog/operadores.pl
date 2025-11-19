suma(X,Y, R) :- R is X+Y.
%suma(10, 2, R).

resta(X,Y, R) :- R is X-Y.
%resta(10, 2, R).

multiplicacion(X,Y, R) :- R is X*Y.
%multiplicacion(10, 2, R).


division(X,Y, R) :- R is X/Y.
%division(10, 2, R).

resto(X,Y, R) :- R is X mod Y.
%resto(7, 2, R).


elevado(X,Y, R) :- R is X ^ Y.
%elevado(7, 2, R).

negacion(X, R) :- R is -X.
%negacion(5, R)

absolut(X, R):- R is abs(X).
%absolut(5, R)

acos(X, R):- R is acos(X).
%acos(0.5,  R)

asen(X, R):- R is asin(X).

