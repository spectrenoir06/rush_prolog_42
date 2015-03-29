femme(X) :- member((X), [anne, betty, lisa, sylvie, eve, julie, valerie]).
homme(X) :- member((X), [jacques, herve, gerard, marc, luc, jules, leon, loic, paul]).

mari_de(X, Y) :- member(X, Y), [(marc, anne), (luc, betty), (jules, lisa), (leon, sylvie), (loic, eve), (paul, julie)].

femme_de(X, Y) :- femme(X), mari_de(Y, X).
mari_de(X, Y) :- homme(X), femme_de(Y, X).

enfant_de(X, Y) :- mari_de(Z, Y), enfant_de(X, Z).

enfant_de(X, Y) :- member((X, Y), [(leon, marc), (jules, marc), (jean, marc)]). 
enfant_de(X, Y) :- member((X, Y), [(lisa, luc), (loic, luc), (gerard, luc)]). 
enfant_de(X, Y) :- member((X, Y), [(herve, leon), (julie, leon)]).
enfant_de(X, Y) :- member((X, Y), [(paul, loic), (valerie, loic), (jacques, jules)]).  

ancetre_de(X, Y) :- enfant_de(Y, X).
ancetre_de(X, Z) :- enfant_de(Y, X), ancetre_de(Y, Z).

beaupere_de(X, Y) :- (mari_de(Z, Y) ; femme_de(Z, Y)), enfant_de(Z, X), homme(X).
bellemere_de(X, Y) :- (mari_de(Z, Y) ; femme_de(Z, Y)), enfant_de(Z, X), femme(X).