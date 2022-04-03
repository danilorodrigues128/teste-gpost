SHOW TABLES;

DELETE FROM user WHERE id <> 0;
INSERT INTO user VALUES(0, "postel", "postel", "admin", "2b9afa616f6820d810268b6f72068ae8");

DELETE FROM page WHERE id <> 0;
INSERT INTO page VALUES(1, "postel", "Guillaume Postel", "Bibliographie de Guillaume Postel", "fr", "");
INSERT INTO page VALUES(11, "humaniste", "Guillaume Postel", "Bibliographie de Guillaume Postel", "fr", "");
INSERT INTO page VALUES(21, "oeuvres", "Les Oeuvres", "", "fr", "");
INSERT INTO page VALUES(31, "arabe", "Une bibliothèque arabe prémoderne", "", "fr", "");
INSERT INTO page VALUES(41, "bibliographe", "Bibliographie Générale", "", "fr", "");

DELETE FROM pagetab WHERE id <> 0;
INSERT INTO pagetab VALUES(0, 1, "Eléments biographiques", "Guillaume Postel (1510 – 1581) est bien connu des hébraïsants et des spécialistes de la cabale. On connait, « l’obsession turque » de Postel qui date de sa participation à l’Ambassade de Jean de la Forest à Constantinople (1535-1537). Guillaume Postel est avant tout un linguiste, c’est son exceptionnelle capacité pour ce domaine qui le signale d’abord. On connait assez bien la vie de Postel, racontée en grande partie par lui-même mais aussi par des biographies publiées très rapidement après sa mort et qui témoignent d’un intérêt contemporain pour l’érudit.
Plusieurs ouvrages rendent compte de la vie mouvementée du Normand (voir la bibliographie). Né en 1510 dans un hameau Normand, La Dolerie, près de Barenton, il rappelle souvent ses origines modestes qui ne le prédestinaient pas à l’existence aventureuse et érudite qu’il a eue. Ses parents meurent de la peste alors qu’il n’a que huit ans. Il est élevé par un oncle et révèle très tôt une appétence exceptionnelle pour la lecture et les langues. A l’âge de 13 ans il enseigne déjà le latin dans une école de Sagy puis part pour Paris. A son arrivée, il est détroussé par des brigands, tombe gravement malade et est hospitalisé un an à l’Hôtel-Dieu. Il survit à sa maladie et à son hospitalisation puis loue ses bras dans les fermes de la Beauce pour s’acheter un habit. Lorsqu’il retourne à Paris, il est employé au Collège Sainte-Barbe où il découvre le monde érudit de la Montagne Sainte Geneviève qui remarque ses capacités intellectuelles hors du commun.
Il est rattaché à la première ambassade de France à Constantinople (1535-1537) et poursuit, lors de ce premier séjour en Orient, son apprentissage des langues pratiquées dans l’Empire Ottoman.
A son retour, il passe par Venise, ville importante alors notamment pour l’activité des imprimeurs et des érudits comme Daniel Bomberg qu’il rencontre. Chez l’imprimeur, il côtoie des Italiens eux-aussi intéressés par les langues sémitiques (l’hébreu d’abord mais aussi l’arabe ou le chaldéen).
Il rentre à Paris où il est nommé lecteur royal en langues orientales, en 1538. Les années 1538-1542 sont particulièrement riches en productions linguistiques.
Il se dirige vers Rome en 1544 pour intégrer l’ordre des Jésuites fondé par Ignace de Loyola dont il a fait la connaissance à Paris. Après quelques mois de noviciat, il est renvoyé de l’ordre et se rend à Venise où il est, entre autres, confesseur de Jehanne qu’il identifie comme la « mère du monde ». A partir de ce moment, il développe une pensée originale qu’il défend jusqu’à la fin de sa vie et qui place Jehanne au centre d’un système universel qui permettra d’accéder à un monde « restitué » et à la « concorde universelle ».
Il entreprend un deuxième voyage en Orient en 1549, la majorité des manuscrits arabes rapportés par Postel sont acquis lors de ce deuxième séjour à Constantinople. Il rentre à Venise l’année suivante.
Il enseigne à Paris au collège des Lombards en 1552 puis quitte Paris où son enseignement est interdit. Il séjourne à Bâle puis retourne à Venise où ses écrits sont mis à l’index en 1555. Le tribunal de l’Inquisition de Venise le diagnostique amens (fou). Il est finalement incarcéré quatre ans à Rome et est libéré grâce à une révolte sans rapport avec son incarcération.
Il rentre à Paris en 1563. Jugé fou, il est incarcéré à Saint-Martin-des-Champs où il continue à écrire et à recevoir les érudits de son temps ainsi que ses disciples.
Il meurt en 1581.");
INSERT INTO pageTab VALUES(0, 1, "Eléments biographiques", "Guillaume Postel");
INSERT INTO pageTab VALUES(0, 1, "Eléments biographiques", "Guillaume Postel");
INSERT INTO pageTab VALUES(0, 1, "Eléments biographiques", "Guillaume Postel");



SELECT * FROM page;

-- DELETE FROM pagetab WHERE id <> 0;
SELECT * FROM pagetab;

SELECT * FROM page p, pagetab pt WHERE p.id = pt.idPage AND url = "postel" AND language = "fr";

SELECT * FROM arab;

