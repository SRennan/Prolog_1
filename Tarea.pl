hombre(enrique8).
hombre(enrique7).
hombre(arturo).
hombre(eduardo).
mujer(margarita).
mujer(juana).
mujer(ana).
mujer(isabel).
mujer(maria).
mujer(catalina).

progenitor(enrique6,enrique7).

progenitor(enrique7,enrique8).
progenitor(enrique7,arturo).
progenitor(enrique7,margarita).

progenitor(enrique8,eduardo).
progenitor(enrique8,isabel).
progenitor(enrique8,maria).
progenitor(juana,eduardo).
progenitor(ana,isabel).
progenitor(catalina,maria).

madre(X,Y):-mujer(X),progenitor(X,Y).
padre(X,Y):-hombre(X),progenitor(X,Y).

antepasado(X,Y):-progenitor(X,Y).
antepasado(X,Y):-progenitor(X,Z),antepasado(Z,Y).

hermanos(X,Y):-progenitor(Z,Y),progenitor(Z,X), not(X==Y).

abuelo(X,Y):-progenitor(Z,Y),progenitor(X,Z).
