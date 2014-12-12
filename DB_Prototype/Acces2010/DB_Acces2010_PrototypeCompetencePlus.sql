CREATE TABLE Filiere
(
ID AUTOINCREMENT PRIMARY KEY,
Titre varchar(255),
Code varchar(255),
Description varchar(255)
);

CREATE TABLE Groupe
(
ID AUTOINCREMENT PRIMARY KEY,
Nom varchar(255),
Code varchar(255),
Description varchar(255),
IdFiliere  int,
CONSTRAINT fk_Groupe FOREIGN KEY (IdFiliere)
REFERENCES Filiere(ID)
);

CREATE TABLE Stagiaire
(
ID AUTOINCREMENT PRIMARY KEY,
Nom varchar(255),
Prenom varchar(255),
DateNaissance varchar(255),
Sex varchar(255),
Cin varchar(255),
Email varchar(255),
Telephone varchar(255),
Adress varchar(255),
Profileimage varchar(255),
Etat int,
IdGroupe int,
CONSTRAINT fk_Stagiaire FOREIGN KEY (IdGroupe)
REFERENCES Groupe(ID)
);