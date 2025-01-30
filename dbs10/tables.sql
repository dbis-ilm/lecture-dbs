CREATE TABLE Erzeuger (
    Weingut       varchar(20),
    Anbaugebiet   varchar(20),
    Region        varchar(20) NOT NULL,
    PRIMARY KEY (Weingut)
);

INSERT INTO Erzeuger VALUES
    ('Creek','Barossa Valley','South Australia'),
    ('Helena','Napa Valley','Kalifornien'),
    ('Chateau La Rose','Saint-Emilion','Bordeaux'),
    ('Chateau La Pointe','Pomerol','Bordeaux'),
    ('Müller','Rheingau','Hessen'),
    ('Bighorn','Napa Valley','Kalifornien');

CREATE TABLE Weine (
    WeinID      int,
    Name        varchar(20) NOT NULL,
    Farbe       varchar(10),
    Jahrgang    int,
    Weingut     varchar(20),
    FOREIGN KEY (Weingut) REFERENCES Erzeuger(Weingut),
    PRIMARY KEY (WeinID)
);

INSERT INTO Weine VALUES
    (1042,'La Rose Grand Cru','Rot',1998,'Chateau La Rose'),
    (2168,'Creek Shiraz','Rot',2003,'Creek'),
    (3456,'Zinfandel','Rot',2004,'Helena'),
    (2171,'Pinot Noir','Rot',2001,'Creek'),
    (3478,'Pinot Noir','Rot',1999,'Helena'),
    (4711,'Riesling Reserve','Weiß',1999,'Müller'),
    (4961,'Chardonnay','Weiß',2002,'Bighorn');
