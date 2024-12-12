-- CREATE TABLE edusign (
--     id INTEGER PRIMARY KEY AUTOINCREMENT,
--     firstname TEXT NOT NULL,
--     lastname TEXT NOT NULL,
--     email TEXT NOT NULL UNIQUE,
--     date_of_signature DATETIME NOT NULL
-- ); 

-- INSERT INTO edusign (user_id,date_of_signature)
-- VALUES ('1','2024-12-11 09:30:00');
-- INSERT INTO edusign (user_id,date_of_signature)
-- VALUES ('2','2024-12-11 09:30:01');
-- INSERT INTO edusign (user_id,date_of_signature)
-- VALUES ('3','2024-12-11 09:30:02');
-- INSERT INTO edusign (user_id,date_of_signature)
-- VALUES ('4','2024-12-11 09:30:03');
-- INSERT INTO edusign (user_id,date_of_signature)
-- VALUES ('5','2024-12-11 09:30:04');
-- INSERT INTO edusign (user_id,date_of_signature)
-- VALUES ('6','2024-12-11 09:30:00');


-- CREATE TABLE users (
--     id INTEGER PRIMARY KEY AuTOINCREMENT ,
--     firstname TEXT NOT NULL,
--     lastname TEXT NOT NULL,
--     email TEXT NOT NULL 
-- );

-- DROP TABLE edusign;

-- CREATE TABLE edusign (
--     id INTEGER PRIMARY KEY AUTOINCREMENT,
--     user_id INTEGER NOT NULL,
--     date_of_signature DATETIME NOT NULL,
--     FOREIGN KEY (user_id) REFERENCES users(id)
-- ); 

-- DROP TABLE edusign;

-- DROP TABLE users;

-- INSERT INTO users ( firstname, lastname, email) VALUES ('Jean', 'Dupond', 'dupj@test.fr');
-- INSERT INTO users ( firstname, lastname, email) VALUES ('Marta', 'Bossier', 'MBossier@test.fr');
-- INSERT INTO users ( firstname, lastname, email) VALUES ('Marion', 'Lola', 'LMarionr@test.fr');
-- INSERT INTO users ( firstname, lastname, email) VALUES ('Pierre', 'Perrin', 'PPerrin@test.fr');
-- INSERT INTO users ( firstname, lastname, email) VALUES ('Julien', 'Boisseau', 'JulienB@test.fr');
-- INSERT INTO users ( firstname, lastname, email) VALUES ('Manon', 'Strasbourg', 'ManonStrat@test.fr');

-- PARTIE 1 DE L'ETAPE 3
-- SELECT * FROM users
-- SELECT * FROM users WHERE firstname = 'Marion' 
-- SELECT * FROM users WHERE SUBSTR(firstname, 1, 1) = 'M'
-- SELECT COUNT(*) FROM users
-- SELECT COUNT(*) FROM users WHERE SUBSTR(firstname, 1, 1) = 'M'
-- SELECT firstname FROM users;

-- PARTIE 2 DE L'ETAPE 3
-- Insérer une ligne dans la table edusign qui correspond à la user Ada avec comme date de signature le 2024-05-30 09:30:00
-- INSERT INTO edusign (user_id, date_of_signature) VALUES ('4','2024-05-30 09:30:00');
-- Insérer une ligne dans la table edusign qui correspond à la user Bella avec comme date de signature le 2024-05-30 09:30:00
-- INSERT INTO edusign (user_id, date_of_signature) VALUES ('2','2024-05-30 09:30:00');
-- Insérer toutes les lignes de la table users dans la table edusign avec pour date de signature le 2024-09-01 09:30:00
-- INSERT INTO edusign (user_id, date_of_signature) VALUES ('1','2024-05-30 09:30:00');
-- INSERT INTO edusign (user_id, date_of_signature) VALUES ('2','2024-05-30 09:30:00');
-- INSERT INTO edusign (user_id, date_of_signature) VALUES ('3','2024-05-30 09:30:00');
-- INSERT INTO edusign (user_id, date_of_signature) VALUES ('4','2024-05-30 09:30:00');
-- INSERT INTO edusign (user_id, date_of_signature) VALUES ('5','2024-05-30 09:30:00');
-- INSERT INTO edusign (user_id, date_of_signature) VALUES ('6','2024-05-30 09:30:00');
-- Sélectionner toutes les lignes de la table edusign ordonnées par date de signature de la plus récente à la plus ancienne et par user_id ascendant. Résultat attendu 👇
-- Note : les id peuvent potentiellement être différents entre ce résultat et le votre. Selon comment vous avez construit votre table et l’ordre dans laquelle vous avez inséré les données
-- SELECT *
-- FROM edusign
-- ORDER BY date_of_signature ASC;
-- Sélectionner toutes les lignes de la table edusign dont la date est 2024-05-30 09:30:00
-- SELECT * FROM edusign
-- WHERE date_of_signature = '2024-05-30 09:30:00';

-- PARTIE 3 DE L'ETAPE 3
-- Dans la table edusign, afficher le nombre d’apprenantes par date.
-- SELECT date_of_signature, COUNT(*) 
-- FROM edusign
-- GROUP BY date_of_signature;
-- Compter le nombre de ligne au sein de la table edusign dont le prénom est Bella, le nom de la colonne finale doit être volume
-- SELECT COUNT(*) 
-- FROM edusign
-- JOIN users ON edusign.user_id = users.id
-- WHERE users.firstname = 'Pierre';