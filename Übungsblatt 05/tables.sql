-- Kontinent
CREATE TABLE Kontinent (
    Land    TEXT PRIMARY KEY,
    Erdteil TEXT
);

INSERT INTO Kontinent VALUES
    ('Schweden',       'Europa'),
    ('Schweiz',        'Europa'),
    ('Italien',        'Europa'),
    ('Deutschland',    'Europa'),
    ('Großbritannien', 'Europa'),
    ('Österreich',     'Europa'),
    ('Frankreich',     'Europa'),
    ('Russland',       'Europa'),
    ('Zaire',          'Afrika'),
    ('Tansania',       'Afrika'),
    ('Burundi',        'Afrika'),
    ('Sambia',         'Afrika'),
    ('Uganda',         'Afrika'),
    ('Kenia',          'Afrika'),
    ('Aethiopien',     'Afrika'),
    ('Tschad',         'Afrika'),
    ('Niger',          'Afrika'),
    ('Nigeria',        'Afrika'),
    ('Kamerun',        'Afrika'),
    ('Mexiko',         'Amerika'),
    ('Kanada',         'Amerika'),
    ('USA',            'Amerika'),
    ('Peru',           'Amerika'),
    ('Bolivien',       'Amerika'),
    ('Eldorado',       'Amerika'),
    ('Phantasia',      'Antarktika'),
    ('China',          'Asien'),
    ('Australien',     'Australien');

-- See
CREATE TABLE See (
    Name          TEXT,
    MaximaleTiefe INTEGER,
    MittlereTiefe INTEGER,
    Land          TEXT,
    PRIMARY KEY   (Name, Land),
    FOREIGN KEY   (Land) REFERENCES Kontinent(Land)
);

INSERT INTO See VALUES
    ('Bodensee',         252,  90, 'Deutschland'),
    ('Bodensee',         252,  90, 'Schweiz'),
    ('Bodensee',         252,  90, 'Österreich'),
    ('Gardasee',         346, 136, 'Italien'),
    ('Vaenernsee',       100,  27, 'Schweden'),
    ('Tanganjikasee',   1435, 570, 'Zaire'),
    ('Tanganjikasee',   1435, 570, 'Tansania'),
    ('Tanganjikasee',   1435, 570, 'Burundi'),
    ('Tanganjikasee',   1435, 570, 'Sambia'),
    ('Victoriasee',       85,  40, 'Uganda'),
    ('Victoriasee',       85,  40, 'Kenia'),
    ('Victoriasee',       85,  40, 'Tansania'),
    ('Baikalsee',       1620, 744, 'Russland'),
    ('Tanasee',           72,   8, 'Aethiopien'),
    ('Tschadsee',          7,   2, 'Tschad'),
    ('Tschadsee',          7,   2, 'Niger'),
    ('Tschadsee',          7,   2, 'Nigeria'),
    ('Tschadsee',          7,   2, 'Kamerun'),
    ('Eduardsee',        117,  17, 'Zaire'),
    ('Eduardsee',        117,  17, 'Uganda'),
    ('Ontariosee',       236,  86, 'USA'),
    ('Ontariosee',       236,  86, 'Kanada'),
    ('Titicacasee',      272, 107, 'Peru'),
    ('Titicacasee',      272, 107, 'Bolivien'),
    ('Genfer See',       310, 154, 'Schweiz'),
    ('Genfer See',       310, 154, 'Frankreich'),
    ('Steinhuder Meer',    3,   2, 'Deutschland'),
    ('Chiemsee',          73,  25, 'Deutschland'),
    ('Loch Ness',        230, 132, 'Großbritannien'),
    ('Crater Lake',      594, 350, 'USA');

-- Wasserlauf
CREATE TABLE Wasserlauf (
    Fluss       TEXT    PRIMARY KEY,
    Laenge      INTEGER,
    muendet_in  TEXT,
    muendet_bei INTEGER
);

INSERT INTO Wasserlauf VALUES
    ('Donau',    2857, 'Schwarzes Meer', NULL),
    ('Elbe',     1094, 'Nordsee',        NULL),
    ('Fulda',     220, 'Weser',             0),
    ('Havel',     334, 'Elbe',            438),
    ('Ilm',       129, 'Saale',            64),
    ('Inn',       517, 'Donau',           632),
    ('Isar',      295, 'Donau',           575),
    ('Lech',      256, 'Donau',           361),
    ('Main',      527, 'Rhein',           496),
    ('Oder',      854, 'Ostsee',         NULL),
    ('Rhein',    1232, 'Nordsee',        NULL),
    ('Saale',     413, 'Elbe',            291),
    ('Schorte',     9, 'Ilm',             112),
    ('Schwarza',   53, 'Saale',           188),
    ('Spree',     400, 'Havel',            64),
    ('Werra',     300, 'Weser',             0),
    ('Weser',     452, 'Nordsee',        NULL);

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
