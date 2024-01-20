CREATE TABLE clients (
    id SERIAL PRIMARY KEY,
    nom VARCHAR(100),
    email VARCHAR(100) UNIQUE
);

CREATE TABLE commandes (
    id SERIAL PRIMARY KEY,
    date_commande DATE NOT NULL,
    montant DECIMAL NOT NULL,
    client_id INTEGER,
    FOREIGN KEY (client_id) REFERENCES clients(id)
);