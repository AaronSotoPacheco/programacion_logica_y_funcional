parent(hominoidea, hominidea).
parent(hominoidea, hylobatidae).
parent(hominidea, homininae).
parent(hominidea, ponginae).
parent(hylobatidae, hylobates).
parent(homininae, hominini).
parent(homininae, gorillini).
parent(ponginae, pongo).
parent(hominini, homo).
parent(hominini, pan).
parent(gorillini, gorilla).
parent(homo, human).
parent(pan, bonobo).
parent(pan, chimpanzee).
parent(gorilla, gorilla2).
parent(pongo, orangutan).
parent(hylobates, gibbon).


evolucion(hominoidea, superfamily).
evolucion(hominidea, family).
evolucion(hylobatidae, family).
evolucion(homininae, subfamily).
evolucion(ponginae, subfamily).
evolucion(hominini, tribe).
evolucion(gorillini, tribe).
evolucion(homo, genus).
evolucion(pan, genus).
evolucion(gorilla, genus).
evolucion(pongo, genus).
evolucion(hylobates, genus).
evolucion(human, species).
evolucion(bonobo, species).
evolucion(chimpanzee, species).
evolucion(gorilla2, species).
evolucion(orangutan, species).
evolucion(gibbon, species).

%reglas
descendiente(A, B) :- parent(A, B).
descendiente(A, B) :- parent(A, C), descendiente(C, B).

ancestro(A, B) :- descendiente(B, A).

hermano(A, B) :- parent(C, A),  parent(C, B).

misma_familia(A,B) :- evolucion(A, F), evolucion(B, F).


/*1- Es el gorila descendiente de hominini?
descendiente(gorilla,hominini).

2- ¿Es el Homo hermano del gorila?
hermano(homo, gorilla).

3-¿Son el Homo y el Gorilla de la misma subfamilia?
misma_familia(homo, gorilla).

4-¿Tiene Hominini la misma familia que Pongo?
misma_familia(hominini, pongo).

-5¿Quiénes son los descendientes directos de una tribu?


/*







