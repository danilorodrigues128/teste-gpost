SHOW TABLES;

DELETE FROM page WHERE id <> 0;
INSERT INTO page VALUES(1, "postel", "Guillaume Postel", "Bibliographie de Guillaume Postel", "fr", "");
INSERT INTO page VALUES(11, "humaniste", "Guillaume Postel", "Bibliographie de Guillaume Postel", "fr", "");
INSERT INTO page VALUES(21, "oeuvres", "Les Oeuvres", "", "fr", "");
INSERT INTO page VALUES(31, "arabe", "Une bibliothèque arabe prémoderne", "", "fr", "");
INSERT INTO page VALUES(41, "bibliographe", "Bibliographie Générale", "", "fr", "");

SELECT * FROM page;

-- DELETE FROM pagetab WHERE id <> 0;
SELECT * FROM pagetab;

SELECT * FROM page p, pagetab pt WHERE p.id = pt.idPage AND url = "postel";