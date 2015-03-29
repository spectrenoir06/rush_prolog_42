not(P) :- call(P), !, fail. 
not(P).

impossible(etatcourant(A, B, B, A)) :- A \= B.
impossible(etatcourant(A, A, B, B)) :- A \= B.

etatsuivant(etatcourant(Peon,Chou,Chevre,Loup),etatcourant(0,0,Chevre,Loup)) :- Chou = 1, Peon = 1, not(impossible(etatcourant(0,0,Chevre,Loup))).
etatsuivant(etatcourant(Peon,Chou,Chevre,Loup),etatcourant(1,1,Chevre,Loup)) :- Chou = 0, Peon = 0, not(impossible(etatcourant(1,1,Chevre,Loup))).

etatsuivant(etatcourant(Peon,Chou,Chevre,Loup),etatcourant(0,Chou,0,Loup)) :- Chevre = 1, Peon = 1, not(impossible(etatcourant(0,Chou,0,Loup))).
etatsuivant(etatcourant(Peon,Chou,Chevre,Loup),etatcourant(1,Chou,1,Loup)) :- Chevre = 0, Peon = 0, not(impossible(etatcourant(1,Chou,1,Loup))).

etatsuivant(etatcourant(Peon,Chou,Chevre,Loup),etatcourant(0,Chou,Chevre,0)) :- Loup = 1, Peon = 1, not(impossible(etatcourant(0,Chou,Chevre,0))).
etatsuivant(etatcourant(Peon,Chou,Chevre,Loup),etatcourant(1,Chou,Chevre,1)) :- Loup = 0, Peon = 0, not(impossible(etatcourant(1,Chou,Chevre,1))).

etatsuivant(etatcourant(Peon,Chou,Chevre,Loup),etatcourant(0,Chou,Chevre,Loup)) :- Peon = 1, not(impossible(etatcourant(0,Chou,Chevre,Loup))).
etatsuivant(etatcourant(Peon,Chou,Chevre,Loup),etatcourant(1,Chou,Chevre,Loup)) :- Peon = 0, not(impossible(etatcourant(1,Chou,Chevre,Loup))).

possible_riviere(X, X, CList, CList).
possible_riviere(X, Y, CList, List) :-
	etatsuivant(X, Z),
	not(member(Z, CList)),
	possible_riviere(Z, Y, [Z | CList], List).

chemin_riviere(X, Y, FoundPath) :- possible_riviere(X, Y, [X], FoundPath).

resoudre :- chemin_riviere(etatcourant(1,1,1,1),etatcourant(0,0,0,0), Liste), writenl(Liste).
