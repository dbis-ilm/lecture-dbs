CREATE TABLE IF NOT EXISTS "Student" (
	"StId"	INTEGER,
	"StName"	TEXT,
	"Major"	TEXT,
	"Age"	INTEGER,
	PRIMARY KEY("StId")
);

INSERT INTO "Student" VALUES
    (1,'Peter Pan','SF',23),
    (2,'Holden Caulfield','CS',25),
    (3,'Holly Golightly','CCS',21),
    (4,'Paul Varjak','CS',31),
    (5,'Sally Tomato','CR',55),
    (6,'Bilbo Baggins','SF',56),
    (7,'Frodo Baggins','CCS',23),
    (8,'Peter Sellers','DD',35),
    (9,'Emma Woodhouse','HW',22),
    (10,'Scout Finch','PL',18);

CREATE TABLE IF NOT EXISTS "Books" (
	"DocId"	INTEGER,
	"Title"	TEXT,
	"Publisher"	TEXT,
	"Year"	INTEGER,
	PRIMARY KEY("DocId")
);

INSERT INTO "Books" VALUES
    (1,'To Kill A Mockingbird','Lippincott',1960),
    (2,'Breakfast At Tiffany''s','Random House',1958),
    (3,'The Catcher In The Rye','Little, Brown and Company',1951),
    (4,'Lord Of The Rings - The Fellowship Of The Ring','Allen & Unwin',1954),
    (5,'Lord Of The Rings - The Two Towers','Allen & Unwin',1954),
    (6,'Lord Of The Rings - The Return Of The King','Allen & Unwin',1955),
    (7,'Franny and Zooey','Little, Brown and Company',1961),
    (8,'Tender Is The Night','Charles Scribner''s Sons',1934),
    (9,'The Great Gatsby','Charles Scribner''s Sons',1925),
    (10,'This Side of Paradise','Charles Scribner''s Sons',1920),
    (11,'The Grass Harp','Random House',1951),
    (12,'Other Voices, Other Rooms','Random House',1948),
    (13,'The New York Trilogy','Faber & Faber',1987),
    (14,'Pride and Prejudice','Egerton',1813),
    (15,'Sense and Sensibility','Egerton',1811),
    (16,'Emma','Thomas Murray',1815),
    (17,'Wuthering Heights','Thomas Newby',1847),
    (18,'On the Road','Viking press',1957),
    (19,'Big Sur','Farrar, Straus and Cudahy',1962),
    (20,'Naked Lunch','Grove Press',1959);

CREATE TABLE IF NOT EXISTS "Authors" (
	"AName"	TEXT,
	"Address"	TEXT,
	PRIMARY KEY("AName")
);

INSERT INTO "Authors" VALUES
    ('Harper Lee','Monroeville, ALA, US'),
    ('Truman Capote','New York City, US'),
    ('J.D. Salinger','Cornish, NH, US'),
    ('J.R.R. Tolkien','Oxford, UK'),
    ('F. Scott Fitzgerald','St Paul, MN, US'),
    ('Paul Auster','New York City, US'),
    ('Jane Austen','Winchester, UK'),
    ('Emily Bronte','Haworth, UK'),
    ('Jack Kerouac','Saint Petersburg, FL, US'),
    ('William S. Borroughs','Lawrence, KS, US');

CREATE TABLE IF NOT EXISTS "borrows" (
	"DocId"	int,
	"StId"	int,
	"Date"	date,
	FOREIGN KEY("DocId") REFERENCES "Books"("DocId"),
	FOREIGN KEY("StId") REFERENCES "Student"("StId")
);

INSERT INTO "borrows" VALUES
    (1,10,'2020-01-21'),
    (2,5,'2010-04-12'),
    (1,1,'2021-08-24'),
    (1,5,'2015-09-15'),
    (10,2,'2017-03-17'),
    (4,6,'2019-12-31'),
    (7,4,'2018-04-22');

CREATE TABLE IF NOT EXISTS "describes" (
	"DocId"	int,
	"Keyword"	varchar(255),
	FOREIGN KEY("DocId") REFERENCES "Books"("DocId")
);

INSERT INTO "describes" VALUES
    (1,'southern gothic'),
    (1,'coming of age'),
    (2,'humorous fiction'),
    (3,'superficiality'),
    (3,'depression'),
    (4,'fantasy'),
    (4,'epic'),
    (5,'fantasy'),
    (5,'epic'),
    (6,'fantasy'),
    (6,'epic'),
    (7,'New York'),
    (7,'family story'),
    (8,'schizophrenia'),
    (8,'florence nightingale syndrome'),
    (8,'france'),
    (9,'jazz age'),
    (9,'New York'),
    (10,'jazz age'),
    (11,'orphan'),
    (11,'friendship'),
    (12,'southern gothic'),
    (13,'postmodern'),
    (13,'mystery fiction'),
    (14,'novel of manners'),
    (15,'epistolary form'),
    (15,'sisters'),
    (16,'romance'),
    (16,'family story'),
    (17,'romanticism'),
    (17,'gothic fiction'),
    (18,'beat'),
    (18,'counterculture'),
    (19,'beat'),
    (20,'beat'),
    (20,'postmodern'),
    (20,'drugs');

CREATE TABLE IF NOT EXISTS "haswritten" (
	"DocId"	int,
	"AName"	varchar(255),
	FOREIGN KEY("AName") REFERENCES "Authors"("AName"),
	FOREIGN KEY("DocId") REFERENCES "Books"("DocId")
);

INSERT INTO "haswritten" VALUES
    (1,'Harper Lee'),
    (2,'Truman Capote'),
    (11,'Truman Capote'),
    (12,'Truman Capote'),
    (3,'J.D. Salinger'),
    (7,'J.D. Salinger'),
    (4,'J.R.R. Tolkien'),
    (5,'J.R.R. Tolkien'),
    (6,'J.R.R. Tolkien'),
    (8,'F. Scott Fitzgerald'),
    (9,'F. Scott Fitzgerald'),
    (10,'F. Scott Fitzgerald'),
    (13,'Paul Auster'),
    (14,'Jane Austen'),
    (15,'Jane Austen'),
    (16,'Jane Austen'),
    (17,'Emily Bronte'),
    (18,'Jack Kerouac'),
    (19,'Jack Kerouac'),
    (20,'William S. Borroughs');

/*
CREATE TABLE IF NOT EXISTS "Bestpizzen" (
	"PNr"	VARCHAR(3) NOT NULL,
	"Pizza"	VARCHAR(25) NOT NULL,
	"Belag"	VARCHAR(60),
	"Preis"	DOUBLE NOT NULL,
	PRIMARY KEY("PNr")
);

INSERT INTO "Bestpizzen" VALUES
    ('P01','Margherita','',4.5),
    ('P02','Tonno','Thunfisch, Zwiebeln',7.2),
    ('P03','Roma','Schinken, Champignons',6.0),
    ('P04','Italia','Champignons, Peperoni, Oregano',6.0),
    ('P05','Hawai','Schinken, Ananas',6.5),
    ('P06','Verdura','Broccoli, Artischocken, Spinat',7.0),
    ('P07','Mexicana','Hackfleisch, Mais, Bohnen, Zwiebeln',7.2),
    ('P08','Rustica','Salami, Schinken, Paprika, Oliven',7.2),
    ('P09','Frutti de Mare','Thunfisch, Muscheln, Tintenfisch',7.2),
    ('P10','Verdura','Tomaten, Paprika, Mais',6.5);

CREATE TABLE IF NOT EXISTS "Kunden" (
	"KdNr"	VARCHAR(3) NOT NULL,
	"Name"	VARCHAR(20) NOT NULL,
	"Strasse"	VARCHAR(20) NOT NULL,
	"HausNr"	VARCHAR(2) NOT NULL,
	PRIMARY KEY("KdNr")
);

INSERT INTO "Kunden" VALUES
    ('127','Fromm','Erfurter','19'),
    ('271','Sauer','Mittelfeld','17'),
    ('307','Abel','Tal','25'),
    ('513','Ernst','Wald','13'),
    ('716','Meier','Humboldt','7'),
    ('801','Schulz','Markt','5'),
    ('893','Schroeder','Stollen','3');

CREATE TABLE IF NOT EXISTS "Bestpositionen" (
	"Anz"	int NOT NULL,
	"BestNr"	VARCHAR(3) NOT NULL,
	"KdNr"	VARCHAR(3) NOT NULL,
	"PNr"	VARCHAR(3) NOT NULL,
	FOREIGN KEY("PNr") REFERENCES "BestPizzen"("PNr"),
	PRIMARY KEY("BestNr","KdNr","PNr"),
	FOREIGN KEY("KdNr") REFERENCES "Kunden"("KdNr")
);

INSERT INTO "Bestpositionen" VALUES
    (2,'001','307','P02'),
    (1,'002','801','P06'),
    (1,'002','801','P09'),
    (3,'004','513','P01'),
    (2,'004','513','P07'),
    (1,'004','513','P08'),
    (1,'004','513','P06'),
    (3,'007','127','P05'),
    (2,'008','801','P08'),
    (1,'009','271','P02'),
    (1,'009','271','P09'),
    (5,'10','893','P04'),
    (1,'011','716','P10'),
    (1,'011','716','P06'),
    (1,'012','127','P05');
*/

CREATE TABLE IF NOT EXISTS Kunde (
    KdNr INTEGER PRIMARY KEY,
    Name VARCHAR
);

INSERT INTO Kunde VALUES
    (123, 'Müller, F.'),
    (456, 'Abel, M.'),
    (789, 'Schulz, R.'),
    (109, 'Jahn, E.'),
    (403, 'Pahn, P.');

CREATE TABLE IF NOT EXISTS Artikel (
    ANr         INTEGER PRIMARY KEY,
    Bezeichnung VARCHAR
);

INSERT INTO Artikel VALUES
    (45, 'Butter'),
    (56, 'Rotkäppchen-Sekt'),
    (11, 'Milch'),
    (67, 'Orangen'),
    (13, 'Kartoffeln');

CREATE TABLE IF NOT EXISTS Supermarkt (
    SID     INTEGER PRIMARY KEY,
    Name    VARCHAR,
    Adresse VARCHAR
);

INSERT INTO Supermarkt VALUES
    (27, 'Aldi', 'Hüttenholz'),
    (23, 'Netto', 'Herderstr.'),
    (24, 'Edeka', 'Stollen'),
    (20, 'nahkauf', 'Kaufhaus');

CREATE TABLE IF NOT EXISTS Angebot (
    SID INTEGER,
    ANr INTEGER,
    PRIMARY KEY (SID, ANr),
    FOREIGN KEY (SID) REFERENCES Supermarkt(SID),
    FOREIGN KEY (ANr) REFERENCES Artikel(ANr)
);

INSERT INTO Angebot VALUES
    (27, 13),
    (27, 56),
    (23, 67),
    (23, 13),
    (24, 56),
    (27, 67),
    (24, 67);

CREATE TABLE IF NOT EXISTS Einkauf (
    Bon   INTEGER PRIMARY KEY,
    SID   INTEGER,
    Datum DATE,
    Zeit  TIME,
    KdNr  INTEGER,
    FOREIGN KEY (SID) REFERENCES Supermarkt(SID),
    FOREIGN KEY (KdNr) REFERENCES Kunde(KdNr)
);

INSERT INTO Einkauf VALUES
    (1, 23, '2023-09-27', '08:13:00', 456),
    (3, 20, '2023-09-30', '09:59:00', 123),
    (5, 24, '2023-10-18', '12:07:00', 789),
    (7, 27, '2023-10-19', '10:43:00', 456),
    (9, 27, '2023-10-19', '21:01:00', 123),
    (17, 20, '2023-12-06', '11:34:00', 403);

CREATE TABLE IF NOT EXISTS Belege (
    Bon   INTEGER,
    ANr   INTEGER,
    Menge INTEGER,
    PRIMARY KEY (Bon, ANr),
    FOREIGN KEY (Bon) REFERENCES Einkauf(Bon),
    FOREIGN KEY (ANr) REFERENCES Artikel(ANr)
);

INSERT INTO Belege VALUES
    (1, 45, 2),
    (1, 67, 10),
    (3, 11, 2),
    (5, 67, 5),
    (7, 56, 1),
    (7, 67, 11),
    (9, 45, 1),
    (9, 56, 3),
    (9, 67, 7);
