
-- Insérer des données dans la table agence
INSERT INTO agence (numero, adresse) VALUES
('A001', '123 Rue Principale, Paris'),
('A002', '456 Avenue de la Liberté, Lyon'),
('A003', '789 Boulevard de la République, Marseille');

-- Insérer des données dans la table profil
INSERT INTO profil (libp) VALUES
('Client'),
('RG'),
('CC');

-- Insérer des données dans la table typecpt
INSERT INTO typecpt (libtc) VALUES
('Compte Courant'),
('Compte Épargne'),
('Compte Entreprise');

-- Insérer des données dans la table recu
INSERT INTO recu (reference, type, dater, montant) VALUES
('REF001', 'Dépôt', '2024-01-15', 1000.00),
('REF002', 'Retrait', '2024-02-20', 200.00),
('REF003', 'Transfert', '2024-03-10', 500.00);

-- Insérer des données dans la table users
INSERT INTO users (nom, prenom, telephone, email, pwd, justificatif, idp) VALUES
('Dupont', 'Jean', '0601020304', 'jean.dupont@example.com', 'passer', 'Justif1', 1),
('Martin', 'Marie', '0612345678', 'marie.martin@example.com', 'passer', 'Justif2', 2),
('Durand', 'Paul', '0623456789', 'paul.durand@example.com', 'passer', 'Justif3', 3);

-- Insérer des données dans la table demande
INSERT INTO demande (dated, idtc, idu) VALUES
('2024-01-01', 1, 1),
('2024-01-15', 2, 2),
('2024-02-01', 3, 3);

-- Insérer des données dans la table compte
INSERT INTO compte (numero, solde, dateCrea, taux, frais, etat, ida, idu, idtc, idd) VALUES
('CPT001', 1000.00, '2024-01-01', 0.5, 5.00, 'Actif', 1, 1, 1, 1),
('CPT002', 2000.00, '2024-01-15', 1.0, 3.00, 'Actif', 2, 2, 2, 2),
('CPT003', 5000.00, '2024-02-01', 1.5, 10.00, 'Inactif', 3, 3, 3, 3);

-- Insérer des données dans la table transaction
INSERT INTO transaction (datetr, montant, type, idu, idc) VALUES
('2024-01-15', 1000.00, 'Dépôt', 1, 1),
('2024-02-20', 200.00, 'Retrait', 2, 2),
('2024-03-10', 500.00, 'Transfert', 3, 3);

-- Insérer des données dans la table transrecu
INSERT INTO transrecu (idr, idtr) VALUES
(1, 1),
(2, 2),
(3, 3);

-- Insérer des données dans la table comptrecu
INSERT INTO comptrecu (idr, idc) VALUES
(1, 1),
(2, 2),
(3, 3);

