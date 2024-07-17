-- Kontinent
CREATE TABLE Kontinent (
    Land    TEXT PRIMARY KEY,
    Erdteil TEXT
);

INSERT INTO Kontinent VALUES
    ('Schweden', 'Europa'),
    ('Schweiz', 'Europa'),
    ('Italien', 'Europa'),
    ('BRD', 'Europa'),
    ('Russland', 'Europa'),
    ('Zaire', 'Afrika'),
    ('Tansania', 'Afrika'),
    ('Burundi', 'Afrika'),
    ('Sambia', 'Afrika'),
    ('Uganda', 'Afrika'),
    ('Kenia', 'Afrika'),
    ('Aethiopien', 'Afrika'),
    ('Tschad', 'Afrika'),
    ('Niger', 'Afrika'),
    ('Nigeria', 'Afrika'),
    ('Mexiko', 'Amerika'),
    ('Kanada', 'Amerika'),
    ('USA', 'Amerika'),
    ('Peru', 'Amerika'),
    ('Bolivien', 'Amerika'),
    ('Eldorado', 'Amerika'),
    ('Phantasia', 'Antarktika'),
    ('China', 'Asien'),
    ('Australien', 'Australien');

-- See
CREATE TABLE See (
    Name  TEXT,
    Tiefe INTEGER,
    Land  TEXT,
    PRIMARY KEY (Name, Land),
    FOREIGN KEY (Land) REFERENCES Kontinent(Land)
);

INSERT INTO See VALUES
    ('Bodensee', 252, 'BRD'),
    ('Gardasee', 346, 'Italien'),
    ('Vaenernsee', 100, 'Schweden'),
    ('Tanganjikasee', 1435, 'Zaire'),
    ('Tanganjikasee', 1435, 'Tansania'),
    ('Tanganjikasee', 1435, 'Burundi'),
    ('Tanganjikasee', 1435, 'Sambia'),
    ('Victoriasee', 85, 'Uganda'),
    ('Victoriasee', 85, 'Kenia'),
    ('Victoriasee', 85, 'Tansania'),
    ('Baikalsee', 1620, 'Russland'),
    ('Tanasee', 72, 'Aethiopien'),
    ('Tschadsee', 7, 'Tschad'),
    ('Tschadsee', 7, 'Niger'),
    ('Tschadsee', 7, 'Nigeria'),
    ('Eduardsee', 117, 'Zaire'),
    ('Eduardsee', 117, 'Uganda'),
    ('Ontariosee', 236, 'USA'),
    ('Ontariosee', 236, 'Kanada'),
    ('Titicacasee', 272, 'Peru'),
    ('Titicacasee', 272, 'Bolivien'),
    ('Schatzsee', 272, 'Phantasia'),
    ('Silbersee', 272, 'Peru'),
    ('Goldsee', 1435, 'Eldorado'),
    ('Genfer_See', 310, 'Schweiz'),
    ('Bodensee', 252, 'Schweiz');

-- Wasserlauf
CREATE TABLE Wasserlauf (
    Fluss    TEXT    PRIMARY KEY,
    Muendung TEXT,
    Laenge   INTEGER
);

INSERT INTO Wasserlauf VALUES
    ('Donau', 'Schwarzes Meer', 2888),
    ('Elbe', 'Nordsee', 1091),
    ('Fulda', 'Weser', 218),
    ('Havel', 'Elbe', 325),
    ('Ilm', 'Saale', 129),
    ('Inn', 'Donau', 517),
    ('Isar', 'Donau', 286),
    ('Lech', 'Donau', 264),
    ('Main', 'Rhein', 524),
    ('Oder', 'Ostsee', 866),
    ('Rhein', 'Nordsee', 1320),
    ('Saale', 'Elbe', 413),
    ('Schorte', 'Ilm', 9),
    ('Schwarza', 'Saale', 53),
    ('Spree', 'Havel', 382),
    ('Werra', 'Weser', 292),
    ('Weser', 'Nordsee', 452);

-- RST
CREATE TABLE R (
    A INTEGER,
    B VARCHAR,
    PRIMARY KEY (A, B)
);

INSERT INTO R VALUES
    (1, 'a'),
    (2, 'c');

CREATE TABLE S (
    B VARCHAR,
    C INTEGER,
    PRIMARY KEY (B, C)
);

INSERT INTO S VALUES
    ('c', 2),
    ('b', 4);

CREATE TABLE T (
    B VARCHAR,
    C INTEGER,
    PRIMARY KEY (B, C)
);

INSERT INTO T VALUES
    ('c', 4),
    ('c', 2);
