CREATE TABLE Filiere
(
ID int IDENTITY(1,1) PRIMARY KEY,
Titre varchar(255),
Code varchar(255),
Description varchar(255)
);

CREATE TABLE Groupe
(
ID int IDENTITY(1,1) PRIMARY KEY,
Nom varchar(255),
Code varchar(255),
Description varchar(255),
IdFiliere  int,
FOREIGN KEY (IdFiliere) REFERENCES Filiere(ID)
);

CREATE TABLE Stagiaire
(
ID int IDENTITY(1,1) PRIMARY KEY,
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
FOREIGN KEY (IdGroupe) REFERENCES Groupe(ID)
);