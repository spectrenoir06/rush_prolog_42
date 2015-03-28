/*
- L’Anglais vit dans la maison rouge.
- Le Suédois a des chiens.
- Le Danois boit du thé.
- La maison verte est à gauche de la maison blanche.
- Le propriétaire de la maison verte boit du café.
+ La personne qui fume des Pall Mall a des oiseaux.
+ Le propriétaire de la maison jaune fume des Dunhill.
- La personne qui vit dans la maison du centre boit du lait.
- Le Norvégien habite dans la première maison.
+ L’homme qui fume des Blend vit à côté de celui qui a des chats.
- L’homme qui a un cheval est le voisin de celui qui fume des Dunhill.
- Le propriétaire qui fume des Blue Master boit de la bière.
- L’Allemand fume des prince.
- Le Norvégien vit juste à côté de la maison bleue.
- L’homme qui fume des Blend a un voisin qui boit de l’eau.
*/

persos(0, []) :- !.
persos(N, [(_Natio, _Maison, _Boisson, _Cigare, _Animal) |T]) :- N1 is N-1, persos(N1, T).

perso(1, [H|_], H) :- !.
perso(N, [_|T], R) :- N1 is N-1 , perso(N1, T, R).

% L Anglais, vit dans la maison rouge
indice_1([(anglais, rouge, _, _, _) |_]).
indice_1([_|T]) :- indice_1(T).

% Le Suedois a des chiens
indice_2([(suedois, _, _, _, chiens) |_]).
indice_2([_|T]) :- indice_2(T).

% Le Danois boit du the
indice_3([(danois, _, the, _, _)] |_).
indice_3([_|T]) :- indice_3(T).

% La maison verte est a gauche de la maison blanche
indice_4([(_, verte, _, _, _), (_, blanche, _, _, _) |_]).
indice_4([_|T]) :- indice_4(T).

% Le proprietaire de la maison verte boit du cafe
indice_5([(_, verte, cafe, _, _) |_]).
indice_5([_|T]) :- indice_5(T).

% La personne personne qui fume des PallMall a des oiseaux
indice_6([(_, _, _, pallmall, oiseaux) |_]).
indice_6([_|T]) :- indice_6(T).

% Le proprietaire de la maison jaune fume des dunhill
indice_7([(_, jaune, _, dunhill, _) |_]).
indice_7([_|T]) :- indice_7(T).

% La personne qui vit dans la maison du centre boit du lait
indice_8

% Le Norvegien habite dans la premiere maison
indice_9

% L homme qui fume des blends vit a cote de celui qui a des chats
indice_10([(_, _, _, blend, _), (_, _, _, _, chats) |_]).
indice_10([(_, _, _, _, chats), (_, _, _, blend, _) |_]).
indice_10([_|T]) :- indice_10(T).

% L homme qui a un cheval est le voisin de celui qui fume des Dunhill
indice_11([(_, _, _, _, cheval), (_, _, _, dunhill, _) |_]).
indice_11([(_, _, _, dunhill, _), (_, _, _, _, cheval) |_]).
indice_11([_|T]) :- indice_11(T).

% L homme qui fume des blue master boit de la biere
indice_12([(_, _, biere, bluemaster, _) |_]).
indice_12([_|T]) :- indice_12(T).

% L Allemand fume des Prince
indice_13([(allemand, _, _, prince, _) |_]).
indice_13([_|T]) :- indice_13(T).

% Le Norvegien vit a cote de la maison bleue
indice_14([(norvegien, _, _, _, _), (_, bleue, _, _, _) |_])
indice_14([(_, bleue, _, _, _), (norvegien, _, _, _, _) |_])
indice_14([_|T]) :- indice_14(T).

% L Homme qui fume des Blend a un voisin qui boit de l'eau
indice_15

% Qui a le poisson?