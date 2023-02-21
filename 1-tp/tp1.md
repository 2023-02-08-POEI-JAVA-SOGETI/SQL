# TP

---

## Modalités

- Versionnez le TP avec Git et GitHub

---

## Énoncé

1. Modélisez avec UML les besoins suivants à l'aide d'un diagramme de classes.
2. Créez le dictionnaire de données
3. Transformez votre diagramme de classes en modèle relationnel en appliquant les règles de transformations.
Chaque requête de création de table doit être stockée dans un fichier .sql
4. Créez des requêtes SQL pour insérer les données dans vos tables.
5. Exécutez toutes les requêtes pour créer et alimenter votre base de données.

### Expression des besoins

- Les centres de formation proposent des formations aux personnes en reconversion professionnelle.
- Les personnes en reconversion déclinent leur identité en donnant leur nom, prénom, adresse postale, adresse e-mail, formations et expériences professionnelles lors des entretiens de recrutement.
- Une formation est composée des informations suivantes : libellé, niveau, année d'obtention, description de la formation.
- Une expérience professionnelle est constituée des informations suivantes : nom du poste occupé, entreprise, date d'entrée, date de sortie, description du poste.
- Lorsqu'une personne en reconversion professionnelle est recrutée, elle intègre une formation qui a une date de début et une date de fin.
- Une formation est constituée de plusieurs Cours.