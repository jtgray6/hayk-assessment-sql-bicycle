-- Create a table, `owners`
CREATE TABLE owners (
    id INTEGER PRIMARY KEY,
    first_name TEXT
);
-- Create a related table, `bicycles`
CREATE TABLE bicycles (
    id INTEGER PRIMARY KEY,
    brand TEXT,
    style TEXT,
    owner_id INTEGER,
    FOREIGN KEY (owner_id) REFERENCES owners(id)
);
-- Create 3 bicycles and 2 owners
INSERT INTO owners (first_name)
VALUES ('Bob'),('Joe');

INSERT INTO bicycles (brand, style, owner_id)
VALUES 
    ('Huffy','street',1),
    ('Trek','street',2),
    ('Giant','mountain',1);

-- Update the properties of one of the bicycles
UPDATE bicycles 
SET brand = 'Fuji', style = 'racing' 
WHERE id  = 1;

-- List all the bicycles
SELECT * FROM bicycles;

-- List all the bicycles with their owners
SELECT bicycles.brand, bicycles.style, owners.first_name
FROM bicycles
INNER JOIN owners ON bicycles.owner_id = owners.id;

-- Delete one of the bicycles
DELETE FROM bicycles WHERE id = 3;
