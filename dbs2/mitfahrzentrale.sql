CREATE TABLE "Nutzer" (
    "Name"          VARCHAR(20) PRIMARY KEY,
    "Kontakt"       VARCHAR(20)
);

INSERT INTO "Nutzer" VALUES
    ('Stefan99', '01771234567'),
    ('Flocke', '01502003040'),
    ('Mausi', '01795675670'),
    ('Speedy', '01764667338'),
    ('Nick', '03612354679'),
    ('Frieda', '01552143657'),
    ('Lisa', '01799876543'),
    ('Andy', '01172553667');

CREATE TABLE "Angebot" (
    "ID"            INTEGER PRIMARY KEY,
    "von"           VARCHAR(20),
    "nach"          VARCHAR(20),
    "Datum"         VARCHAR(20),
    "Plätze"        INTEGER,
    "Preis"         FLOAT,
    "Fahrer"        VARCHAR(20),
    FOREIGN KEY ("Fahrer") REFERENCES "Nutzer"("Name")
);

INSERT INTO "Angebot" VALUES
    (13, 'Ilmenau', 'Erfurt', '2018-11-30', 4, 5.00, 'Nick'),
    (17, 'Erfurt', 'Dresden', '2018-11-30', 1, 15.00, 'Flocke'),
    (27, 'Erfurt', 'Ilmenau', '2018-12-02', 2, 5.00, 'Nick'),
    (49, 'Ilmenau', 'Coburg', '2018-12-07', 3, 8.00, 'Frieda'),
    (53, 'Ilmenau', 'Erfurt', '2018-12-07', 2, 5.50, 'Andy');

CREATE TABLE "Reservierung" (
    "Name"          VARCHAR(20),
    "ID"            INTEGER,
    PRIMARY KEY ("Name", "ID"),
    FOREIGN KEY ("Name") REFERENCES "Nutzer"("Name"),
    FOREIGN KEY ("ID") REFERENCES "Angebot"("ID")
);

INSERT INTO "Reservierung" VALUES
    ('Stefan99', 13),
    ('Stefan99', 27),
    ('Speedy', 13),
    ('Stefan99', 49),
    ('Frieda', 13),
    ('Lisa', 49);
