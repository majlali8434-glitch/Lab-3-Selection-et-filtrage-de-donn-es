-- 1. Ouvrages récents : récupérez les trois ouvrages les plus récemment ajoutés (supposons que id incrémente avec le temps).
SELECT * FROM ouvrage ORDER BY id DESC LIMIT 3;

-- 2. Auteurs à nom long : listez les auteurs dont le nom comporte au moins cinq caractères.
SELECT * FROM auteur WHERE CHAR_LENGTH(nom) >= 5;


-- 3. Abonnés hors domaine : trouvez tous les abonnés dont l'email ne provient pas de example.com ni de test.org.
SELECT nom, email FROM abonne WHERE email NOT LIKE '%@example.com' AND email NOT LIKE '%@test.org';

-- 4. Emprunts longs : sélectionnez les emprunts dont la durée (date_fin - date_debut) dépasse 30 jours.
SELECT * FROM emprunt WHERE DATEDIFF(date_fin, date_debut) > 30;

-- 5. Abonnés Gmail ordonnés : affichez les abonnés dont l’email contient @gmail.com, triés par ordre alphabétique de nom.
SELECT * FROM abonne WHERE email LIKE '%@gmail.com%' ORDER BY nom ASC;