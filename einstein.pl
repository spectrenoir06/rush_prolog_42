/*
- L’Anglais vit dans la maison rouge.
- Le Suédois a des chiens.
- Le Danois boit du thé.
- La maison verte est à gauche de la maison blanche.
- Le propriétaire de la maison verte boit du café.
- La personne qui fume des Pall Mall a des oiseaux.
- Le propriétaire de la maison jaune fume des Dunhill.
- La personne qui vit dans la maison du centre boit du lait.
- Le Norvégien habite dans la première maison.
- L’homme qui fume des Blend vit à côté de celui qui a des chats.
- L’homme qui a un cheval est le voisin de celui qui fume des Dunhill.
- Le propriétaire qui fume des Blue Master boit de la bière.
- L’Allemand fume des prince.
- Le Norvégien vit juste à côté de la maison bleue.
- L’homme qui fume des Blend a un voisin qui boit de l’eau.
*/

nation(X) :- member((X), [anglais, suedois, danois, norvegien, allemand]).
maison(X) :- member((X), [rouge, verte, blanche, jaune, bleue]).
boisson(X) :- member((X), [the, cafe, lait, biere, eau]).
cigare(X) :- member((X), [pallmall, dunhill, blend, bluemaster, prince]).
animal(X) :- member((X), [chiens, chats, oiseaux, poisson, cheval]).

