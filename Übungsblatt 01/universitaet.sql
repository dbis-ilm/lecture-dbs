CREATE TABLE IF NOT EXISTS "Student" (
	"Matrikelnummer"	int NOT NULL,
	"Vorname"	varchar(255) NOT NULL,
	"Nachname"	varchar(255) NOT NULL,
	"Semester"	int,
	PRIMARY KEY("Matrikelnummer")
);

CREATE TABLE IF NOT EXISTS "Fakultaet" (
	"ID"	int NOT NULL,
	"Name"	varchar(255) NOT NULL,
	PRIMARY KEY("ID")
);

CREATE TABLE IF NOT EXISTS "Studiengang" (
	"ID"	int NOT NULL,
	"Name"	varchar(255) NOT NULL,
	"BachelorMaster"	varchar(1),
	"FakultaetID"	int,
	"GesamtLP"	int,
	PRIMARY KEY("ID"),
	FOREIGN KEY("FakultaetID") REFERENCES "Fakultaet"("ID")
);

CREATE TABLE IF NOT EXISTS "Anmeldung" (
	"Matrikelnummer"	int NOT NULL,
	"StudiengangID"	int NOT NULL,
	"ImmaDatum"	date NOT NULL,
	"ExmaDatum"	date,
	PRIMARY KEY("Matrikelnummer","StudiengangID"),
	FOREIGN KEY("StudiengangID") REFERENCES "Studiengang"("ID"),
	FOREIGN KEY("Matrikelnummer") REFERENCES "Student"("Matrikelnummer")
);

CREATE TABLE IF NOT EXISTS "Fach" (
	"ID"	int NOT NULL,
	"Name"	varchar(255) NOT NULL,
	"Leistungspunkte"	int,
	"StudiengangID"	int,
	PRIMARY KEY("ID"),
	FOREIGN KEY("StudiengangID") REFERENCES "Studiengang"("ID")
);

CREATE TABLE IF NOT EXISTS "Pruefung" (
	"Matrikelnummer"	int NOT NULL,
	"FachID"	int NOT NULL,
	"Datum"	date,
	"Note"	REAL,
	FOREIGN KEY("Matrikelnummer") REFERENCES "Student"("Matrikelnummer"),
	FOREIGN KEY("FachID") REFERENCES "Fach"("ID"),
	PRIMARY KEY("Matrikelnummer","FachID")
);

INSERT INTO "Student" VALUES
    (40000,'Wieland','Hirth',3),
    (40001,'Evangelia','Menge',2),
    (40002,'Lisa','Spiller',1),
    (40003,'Franz','Gundlach',1),
    (40004,'Nuray','Wunderlich',4),
    (40005,'Hanfried','Rohrer',3),
    (40006,'Paulina','Niessen',2),
    (40007,'Cord','Ender',4),
    (40008,'Franziskus','Roesler',5),
    (40009,'Elkmar','Salzmann',6),
    (40010,'Brita','Pahlke',8),
    (40011,'Dahlia','Rink',7),
    (40012,'Urda','Maassen',7),
    (40013,'Marlis','Kusch',9),
    (40014,'Elia','Boerner',4),
    (40015,'Lindemarie','Linden',2),
    (40016,'Dietz','Stiefel',3);

INSERT INTO "Fakultaet" VALUES
    (1,'Informatik und Automatisierung'),
    (2,'Elektrotechnik und Informationstechnik'),
    (3,'Maschinenbau'),
    (4,'Mathematik und Naturwissenschaften'),
    (5,'Wirtschaftswissenschaften und Medien');

INSERT INTO "Studiengang" VALUES
    (1,'Informatik','B',1,180),
    (2,'Informatik','M',1,120),
    (3,'Mathematik','B',4,180),
    (4,'Technische Physik','B',4,180),
    (5,'Medienwirtschaft','B',5,180),
    (6,'Wirtschaftsinformatik','B',5,180),
    (7,'Wirtschaftsingenieurwesen','B',5,180),
    (8,'Fahrzeugtechnik','B',3,180),
    (9,'Medientechnologie','B',2,180),
    (10,'Ingenieurinformatik','M',1,90);

INSERT INTO "Anmeldung" VALUES
    (40000,1,'2016-04-01',NULL),
    (40001,3,'2016-10-01',NULL),
    (40002,7,'2017-10-01',NULL),
    (40004,4,'2015-10-01',NULL),
    (40005,6,'2016-4-01','2017-09-01'),
    (40006,5,'2016-10-01',NULL),
    (40007,9,'2015-10-01',NULL),
    (40008,8,'2015-04-01','2017-09-01'),
    (40010,2,'2013-04-01','2017-10-01'),
    (40011,10,'2013-10-01',NULL),
    (40012,10,'2013-10-01',NULL),
    (40013,2,'2013-04-01',NULL),
    (40014,5,'2015-10-01',NULL),
    (40015,1,'2016-10-01',NULL),
    (40016,1,'2016-04-01',NULL);

INSERT INTO "Fach" VALUES
    (1,'Datenbanksysteme',4,1),
    (2,'Analysis 1',8,3),
    (3,'Analysis 2',9,3),
    (4,'Rechnerarchitekturen 1',4,1),
    (5,'Rechnerarchitekturen 2',3,1),
    (6,'Organische Chemie',2,4),
    (7,'Komplexe Informationstechnische Systeme',5,2),
    (8,'Komplexe Informationstechnische Systeme',5,10),
    (9,'Dynamische Prozessoptimierung',5,10),
    (10,'Effiziente Algorithmen',5,2),
    (11,'Physik 1',4,8),
    (12,'Physik 2',4,8),
    (13,'Physik 1',4,9),
    (14,'Physik 2',4,9),
    (15,'Steuerlehre 1',4,5),
    (16,'Steuerlehre 1',4,6),
    (17,'Steuerlehre 1',4,7),
    (18,'Steuerlehre 2',4,5);

INSERT INTO "Pruefung" VALUES
    (40000,1,'2017-08-21',3.0),
    (40000,4,'2016-03-12',2.0),
    (40001,2,'2016-07-30',1.0),
    (40004,6,'2016-03-25',5.0),
    (40006,15,'2017-02-22',2.7),
    (40006,18,'2017-09-03',2.3),
    (40007,13,'2016-07-28',1.7),
    (40008,11,'2016-09-12',4.0),
    (40010,7,'2014-09-14',3.3),
    (40010,10,'2015-02-18',2.7),
    (40011,8,'2014-09-14',3.0),
    (40012,8,'2014-09-14',1.3),
    (40013,7,'2014-09-14',1.7),
    (40014,15,'2016-03-18',2.7),
    (40014,18,'2016-08-17',3.0),
    (40015,1,'2017-08-21',3.0),
    (40015,4,'2016-03-12',3.3),
    (40016,4,'2016-03-12',1.3),
    (40016,13,'2016-07-28',1.7),
    (40016,1,'2017-08-21',1.0);
