femme(anne).
femme(betty).
femme(lisa).
femme(sylvie).
femme(eve).
femme(julie).
femme(valerie).



homme(jean).
homme(jacques).
homme(herve).
homme(gerard).
homme(marc).
homme(luc).
homme(jules).
homme(leon).
homme(loic).
homme(paul).

mari_de(marc,anne).
mari_de(luc,betty).
mari_de(jules,lisa).
mari_de(leon,sylvie).
mari_de(loic,eve).
mari_de(paul,julie).

homme(X) :- not(femme(X)).

femme_de(X, Y) :- femme(X), mari_de(Y, X).

mari_de(X, Y) :- homme(X), femme_de(Y, X).

enfant_de(X, Y) :- mari_de(Z, Y), enfant_de(X, Z).

enfant_de(jean, marc).
enfant_de(jules, marc).
enfant_de(leon, marc).

enfant_de(lisa, luc).
enfant_de(loic, luc).
enfant_de(gerard, luc).

enfant_de(herve, leon).
enfant_de(julie, leon).

enfant_de(paul, loic).
enfant_de(valerie, loic).

enfant_de(jacques, jules).

ancetre_de(X, Y) :- enfant_de(Y, X).

ancetre_de(X, Z) :- enfant_de(Y, X), ancetre_de(Y, Z).

beaupere_de(X, Y) :- (mari_de(Z, Y) ; femme_de(Z, Y)), enfant_de(Z, X), homme(X).
bellemere_de(X, Y) :- (mari_de(Z, Y) ; femme_de(Z, Y)), enfant_de(Z, X), femme(X).



