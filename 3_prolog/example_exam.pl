pertenece(router, red1, red2).

pertenece(pc1, red1).
pertenece(pc2, red1).
pertenece(pc3, red1).
pertenece(pc4, red1).

pertenece(pc5, red2).
pertenece(pc6, red2).
pertenece(pc7, red2).
pertenece(servidor, red2).

velocidad(red1, 1000).
velocidad(red2, 100).
%pertenece(X, red1).
/*pertenece(X, red1).
X = pc1 ;
X = pc2 ;
X = pc3 ;
X = pc4.*/


comunica(A,B):- pertenece(A, R), pertenece(B, R).

%comunica(servidor, pc2).
%false.

%invente una regla
velocidad_red(P, V):- pertenece(P, R), velocidad(R, V). 
/*velocidad_red(pc2, 1000).
true.*/


%regla aritmetrica
mbps(Red, X, R) :- velocidad(Red, V),  R is V / X.

/*mbps(red1, 2, R).
R = 500.*/

%regla comparativa
rapido(R) :- velocidad(R, V),  V > 100.

/*rapido(red1).
true.*/
