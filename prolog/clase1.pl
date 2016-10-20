father(tareh,sarah).
father(abraham,isaac).
father(terach,nachor).
father(terach,horan).
father(terach,abraham).
father(horan,lot).
father(horan,mismcah).
father(horan,yiscah).
mother(sarah,isaac).
male(terach).
male(horan).
male(abraham).
male(nachor).
male(isaac).
male(lot).
female(sarah).
female(milcah).
female(yiscah).
son(X,Y):-father(Y,X),male(X).
grandfather(X,Y):-father(Y,X),father(Z,Y),male(X).
grandfather(X,Y):-father(X,Z),mother(Z,Y).
parent(X,Y):-father(X,Y).
parent(X,Y):-mother(X,Y).
brother(X,Y):-parent(Z,X),parent(Z,Y),male(Y),X\=Y.
ancestor(X,Y):-parent(X,Y).
ancestor(X,Y):-parent(X,Z), ancestor(Z,Y).