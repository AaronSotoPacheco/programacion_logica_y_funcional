%jefe(mark, david).
%jefe(mark, timothy).
%jefe(mark, mike).
%jefe(mark, elliot).
%jefe(mark, lori).
jefe(mark, sheryl).
jefe(sheryl, david).
jefe(sheryl, timothy).
jefe(sheryl, mike).
jefe(sheryl, elliot).
jefe(sheryl, lori).
jefe(elliot, rebecca).
jefe(elliot, heather).

% ¿Quién es el jefe de Rebecca?
%jefe(X, rebecca), jefe(Y, X), jefe(P, Y).

% ¿Es jefe Mark del jefe de Rebecca?
%-jefe(mark, X), jefe(X, rebecca)

%¿Es Lori jefe de alguien?
%-jefe(lori, X).

% Mostrar empleados del jefe de Heather
%-jefe(X, heather), jefe(X, Y).

% ¿Es Timothy jefe de Rebecca?
%-jefe(timothy, rebecca)

%Mostrar compañeros de nivel de Mike
%-jefe(sheryl, X).
%-jefe(X, rebecca), jefe(Y, X), jefe(Y, W).

%¿Es el jefe de Rebecca compañero de nivel de David?
%-jefe(X, rebecca), jefe(Y, X ), jefe(Y, david).

%¿Es compañero de nivel Mike de Lori?
%-jefe(X, mike), jefe(X, lori).