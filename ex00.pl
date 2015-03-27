femme(anne).
femme(betty).
femme(lisa).
femme(sylvie).
femme(eve).
femme(julie).
femme(valerie).
homme(X) :- not(femme(X)).

mari_de(marc,anne).
mari_de(luc,betty).
mari_de(jules,lisa).
mari_de(leon,sylvie).
mari_de(loic,eve).
mari_de(paul,julie).
femme_de(X, Y) :- femme(X), mari_de(Y, X).

enfant_de(jean, marc).
enfant_de(jules, marc).
enfant_de(X, Y) :- mari_de(Z, Y), enfant_de(X, Z).

