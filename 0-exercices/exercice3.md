# Exercice 3 : interrogez une base de données avec des requêtes simples

---

## Modalités

- Versionnez son travail avec Git et GitHub

---

## Documentation

- [Documentation SQL.sh SELECT](https://sql.sh/cours/select)
- [Documentation W3SCHOOLS SELECT](https://www.w3schools.com/sql/sql_select.asp)
- [Documentation spécifique à SQLite SELECT](https://www.sqlite.org/lang_select.html)


---

## Énoncé

1. Récupérez la base donnée [trafic annuel entrant par station du réseau ferré RATP de 2013 à 2021](../databases/ratp/ratp.sqlite).
2. Agence de location GTM Drive Rental située à Paris souhaite connaître les informations suivantes en s'appuyant sur votre expertise dans les bases de données pour sa filiale d'auto-partage GTM Share  qui souhaite mettre à disposition des véhicules pour le covoiturage à proximité des gares de la région parisienne.
Pour chaque demande, vous devez rédiger et stocker la requête SQL et prendre une capture d'écran du résultat retourné par votre base de données.

### Les questions du client qui concerne uniquement l'année 2021

1. Quelle est la station qui comptabilise le plus de trafic ?
2. Quelle est la station qui comptabilise le moins de trafic ?
3. Quel est le nombre total du trafic annuel toutes les stations confondues ?
4. Le nombre total des stations par Arrondissement de Paris dans l'ordre décroissant (celui qui en a le plus à celui qui en a le moins) ?
5. Quel est le nombre total des stations de métro ?
6. Quel est le nombre total des stations de RER ?
7. Tous les noms des stations des villes suivantes :  Bobigny, La courneuve, Saint Denis, Pantin, Montreuil et Bagnolet trié par le nom de la ville croissante (de A à Z)
8. Toutes les informations concernant les stations de la ville de Vincennes.
9. Toutes les stations qui commencent par "porte" triées par ordre décroissant (de Z à A).
10. Toutes les stations qui un tiret du 6 (-) trié par le nom de la ville puis le nom de la station de manière croissante (A à Z) .
11. Les stations qui ont une correspondance avec la ligne A.
12. Toutes les informations concernant la ville de Gagny.
13. Toutes les stations de la ligne 14 sur la même ligne (résultat attendu "station ligne 14 olympiades, saint-lazare, marie de saint-ouen, pont cardinet,etc.", attentiton, etc. c'est pour indiquer les autres stations).
14. Les 5 stations de la ligne de la ligne 1 les plus frequentées.

---

## Bonus

1. La moyenne de la fréquentation des stations  dans le 13 ème arrondissement de Paris.

2. Toutes les villes différentes de Paris.

3. Les stations qui ont une fréquentation entre 5 000 000 et 10 000.

4. Les stations qui ont le mot "marie" ou "ville" dans leur nom.