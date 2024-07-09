-- Create schema 'demande' and table 'formejuridique', and insert data
CREATE SCHEMA IF NOT EXISTS demande;

CREATE TABLE IF NOT EXISTS demande.formejuridique (
    id SERIAL PRIMARY KEY,
    nom VARCHAR(255) NOT NULL
);

-- Insert initial data into 'demande.formejuridique'
INSERT INTO demande.formejuridique (nom) VALUES ('Value1');
INSERT INTO demande.formejuridique (nom) VALUES ('Value2');

-- Create schema 'referentiel' and table 'statuts'
CREATE SCHEMA IF NOT EXISTS referentiel;

CREATE TABLE IF NOT EXISTS referentiel.statuts (
    code SERIAL PRIMARY KEY,
    categorie VARCHAR(255) NOT NULL,
    description TEXT,
    forme_juridique_id INT,
    titre VARCHAR(255),
    CONSTRAINT fk_formej_uridique
      FOREIGN KEY(forme_juridique_id) 
	  REFERENCES demande.formejuridique(id)
);

-- Insert initial data into 'referentiel.statuts'
INSERT INTO referentiel.statuts (categorie, description, forme_juridique_id, titre) 
VALUES ('Category1', 'Description1', 1, 'Title1');
INSERT INTO referentiel.statuts (categorie, description, forme_juridique_id, titre) 
VALUES ('Category2', 'Description2', 2, 'Title2');
