CREATE DATABASE gestionbank;

-- Table Agence
CREATE TABLE agence (
    ida INT PRIMARY KEY AUTO_INCREMENT,
    numero VARCHAR(50) NOT NULL,
    adresse VARCHAR(255) NOT NULL
);

-- Table Profil
CREATE TABLE profil (
    idp INT PRIMARY KEY AUTO_INCREMENT,
    libp VARCHAR(100) NOT NULL
);

-- Table Type de Compte
CREATE TABLE typecpt (
    idtc INT PRIMARY KEY AUTO_INCREMENT,
    libtc VARCHAR(100) NOT NULL
);

-- Table Reçu
CREATE TABLE recu (
    idr INT PRIMARY KEY AUTO_INCREMENT,
    reference VARCHAR(100) NOT NULL,
    type VARCHAR(50) NOT NULL,
    dater DATE NOT NULL,
    montant DECIMAL(10, 2) NOT NULL
);

-- Table Utilisateur (users)
CREATE TABLE users (
    idu INT PRIMARY KEY AUTO_INCREMENT,
    nom VARCHAR(100) NOT NULL,
    prenom VARCHAR(100) NOT NULL,
    telephone VARCHAR(15) NOT NULL,
    email VARCHAR(100) NOT NULL,
    pwd VARCHAR(100) NOT NULL,
    justificatif VARCHAR(255),
    idp INT,
    FOREIGN KEY (idp) REFERENCES profil(idp)
);

-- Table Demande
CREATE TABLE demande (
    idd INT PRIMARY KEY AUTO_INCREMENT,
    dated DATE NOT NULL,
    idtc INT,
    idu INT,
    FOREIGN KEY (idtc) REFERENCES typecpt(idtc),
    FOREIGN KEY (idu) REFERENCES users(idu)
);

-- Table Compte
CREATE TABLE compte (
    idc INT PRIMARY KEY AUTO_INCREMENT,
    numero VARCHAR(50) NOT NULL,
    solde DECIMAL(10, 2) NOT NULL,
    dateCrea DATE NOT NULL,
    taux DECIMAL(5, 2),
    frais DECIMAL(10, 2),
    etat VARCHAR(50) NOT NULL,
    ida INT,
    idu INT,
    idtc INT,
    idd INT,
    FOREIGN KEY (ida) REFERENCES agence(ida),
    FOREIGN KEY (idu) REFERENCES users(idu),
    FOREIGN KEY (idtc) REFERENCES typecpt(idtc),
    FOREIGN KEY (idd) REFERENCES demande(idd)
);

-- Table Transaction
CREATE TABLE transaction (
    idtr INT PRIMARY KEY AUTO_INCREMENT,
    datetr DATE NOT NULL,
    montant DECIMAL(10, 2) NOT NULL,
    type VARCHAR(50) NOT NULL,
    idu INT,
    idc INT,
    FOREIGN KEY (idu) REFERENCES users(idu),
    FOREIGN KEY (idc) REFERENCES compte(idc)
);

-- Table transrecu
CREATE TABLE transrecu (
    idr INT,
    idtr INT,
    PRIMARY KEY (idr, idtr),
    FOREIGN KEY (idr) REFERENCES recu(idr),
    FOREIGN KEY (idtr) REFERENCES transaction(idtr)
);

-- Table comptrecu
CREATE TABLE comptrecu (
    idr INT,
    idc INT,
    PRIMARY KEY (idr, idc),
    FOREIGN KEY (idr) REFERENCES recu(idr),
    FOREIGN KEY (idc) REFERENCES compte(idc)
);

