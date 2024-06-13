DROP TABLE IF EXISTS Produits;
DROP TABLE IF EXISTS Categories;

CREATE TABLE Categories (
    ID_Categorie INT AUTO_INCREMENT PRIMARY KEY,
    Nom_Categorie VARCHAR(100) NOT NULL
);

CREATE TABLE Produits (
    ID_Produit INT AUTO_INCREMENT PRIMARY KEY,
    NomProduit VARCHAR(100) NOT NULL,
    ID_Categorie INT,
    FOREIGN KEY (ID_Categorie) REFERENCES Categories(ID_Categorie),
);