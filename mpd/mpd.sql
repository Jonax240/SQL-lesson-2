
CREATE TABLE Potion (
    id INT AUTO_INCREMENT,
    nom VARCHAR(100) NOT NULL,
);

CREATE TABLE Ingredient (
    id INT AUTO_INCREMENT,
    nom VARCHAR(100) NOT NULL,
);

CREATE TABLE ingredient_potion (
    ingredient_id INT NOT NULL,
    potion_id INT NOT NULL,
    CONSTRAINT pk_ingredient_potion
        PRIMARY KEY (ingredient_id, potion_id),
    CONSTRAINT fk_ingredient_potion_ingredient
        FOREIGN KEY (ingredient_id)
        REFERENCES ingredient(id),
    CONSTRAINT fk_ingredient_potion_potion
        FOREIGN KEY (potion_id)
        REFERENCES potion(id)
);
