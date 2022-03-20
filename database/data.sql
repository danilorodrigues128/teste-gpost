SHOW TABLES;

DELETE FROM page WHERE id <> 0;
INSERT INTO page VALUES(0, "postel", "Guillaume Postel", "Bibliographie de Guillaume Postel", "fr", "");
INSERT INTO page VALUES(0, "humaniste", "Guillaume Postel", "Bibliographie de Guillaume Postel", "fr", "");
INSERT INTO page VALUES(0, "oeuvres", "Les Oeuvres", "", "fr", "");
INSERT INTO page VALUES(0, "arabe", "Une bibliothèque arabe prémoderne", "", "fr", "");
INSERT INTO page VALUES(0, "bibliographe", "Bibliographie Générale", "", "fr", "");

SELECT * FROM page;