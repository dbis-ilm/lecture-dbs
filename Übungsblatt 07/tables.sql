/*
 * Aufgabe 1-3
 */
CREATE TABLE Hotel (
    HName             VARCHAR PRIMARY KEY,
    Adresse           VARCHAR,
    Telefon           VARCHAR,
    DZ                INTEGER,
    EZ                INTEGER,
    EntfernungStrand  INTEGER
);

INSERT INTO Hotel VALUES
    ('Seeblick Hotel',           'Strandstraße 123, Küstenstadt',      '+49 123 456789', 10, 20,   2),
    ('Bergoase Resort',          'Bergweg 456, Alpenstadt',            '+49 987 654321',  8, 15,  65),
    ('Stadthaus Boutique Hotel', 'Innenstadtgasse 789, Metropole',     '+49 555 123456',  5, 10,  15),
    ('Wellness Retreat',         'Entspannungsweg 101, Erholungsort',  '+49 333 888777', 12, 25,  20),
    ('Grüne Oase Hotel',         'Naturpfad 222, Waldstadt',           '+49 111 999000',  7, 12,   8),
    ('Küstenparadies Resort',    'Meeresallee 333, Strandstadt',       '+49 444 222111', 15, 30,   1),
    ('Panorama Hotel',           'Aussichtsplatz 555, Aussichtsstadt', '+49 777 333444',  6, 14,  12),
    ('Stadtpalais Hotel',        'Prachtstraße 777, Metropole',        '+49 666 555888',  3,  5,   8),
    ('Alpenblick Lodge',         'Aussichtsweg 999, Bergdorf',         '+49 222 777888', 10,  5, 140),
    ('Strandperle Hotel',        'Dünenweg 123, Küstenort',            '+49 999 111222', 12, 24,   5);

CREATE TABLE Gast (
    GastID   INTEGER PRIMARY KEY,
    Name     VARCHAR,
    Adresse  VARCHAR
);

INSERT INTO Gast VALUES
    ( 1, 'Max Mustermann',    'Musterstraße 123, Musterstadt'),
    ( 2, 'Anna Schmidt',      'Beispielweg 456, Beispielstadt'),
    ( 3, 'Hans Müller',       'Testgasse 789, Teststadt'),
    ( 4, 'Julia Wagner',      'Probeweg 101, Probekleinstadt'),
    ( 5, 'Thomas Fischer',    'Musterallee 222, Musterstadt'),
    ( 6, 'Sabine Richter',    'Beispielstraße 789, Beispielstadt'),
    ( 7, 'Christian Schmidt', 'Musterweg 555, Musterstadt'),
    ( 8, 'Laura Huber',       'Testallee 333, Teststadt'),
    ( 9, 'Markus Keller',     'Probeweg 909, Probekleinstadt'),
    (10, 'Carina Lehmann',    'Musterplatz 777, Musterstadt'),
    (11, 'Felix Braun',       'Beispielgasse 123, Beispielstadt'),
    (12, 'Sandra Wolf',       'Testweg 444, Teststadt'),
    (13, 'Robert Schneider',  'Probeplatz 222, Probekleinstadt'),
    (14, 'Nicole Fischer',    'Beispielallee 666, Beispielstadt'),
    (15, 'Andreas Weber',     'Musterplatz 888, Musterstadt');

CREATE TABLE Buchung (
    GastID   INTEGER,
    HName    VARCHAR,
    Anreise  VARCHAR,
    AnzPers  INTEGER,
    AnzDZ    INTEGER,
    AnzEZ    INTEGER,
    PRIMARY KEY (GastID, HName, Anreise),
    FOREIGN KEY (GastID) REFERENCES Gast(GastID),
    FOREIGN KEY (HName) REFERENCES Hotel(HName)
);

INSERT INTO Buchung VALUES
    ( 3, 'Strandperle Hotel',     '2024-05-12', 4, 1, 2),
    ( 4, 'Strandperle Hotel',     '2024-04-18', 4, 2, 0),
    ( 6, 'Strandperle Hotel',     '2024-04-18', 5, 2, 1),
    ( 7, 'Seeblick Hotel',        '2024-04-17', 4, 1, 2),
    (15, 'Küstenparadies Resort', '2024-06-01', 3, 0, 3);



/*
 * Aufgabe 4
 */
CREATE TABLE Lager (
    TeilNr INTEGER PRIMARY KEY,
    Regal  INTEGER,
    Vorrat INTEGER
);

INSERT INTO Lager VALUES
    (4713, 5, 19);

CREATE TABLE Auslieferung (
    LieferNr INTEGER PRIMARY KEY,
    TeilNr   INTEGER,
    Anzahl   INTEGER,
    Preis    FLOAT,
    FOREIGN KEY (TeilNr) REFERENCES Lager(TeilNr)
);

CREATE TABLE Nachbestellung (
    TeilNr     INTEGER,
    Anzahl     INTEGER,
    Hersteller VARCHAR,
    FOREIGN KEY (TeilNr) REFERENCES Lager(TeilNr)
);
