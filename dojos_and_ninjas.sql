INSERT INTO dojos (name) VALUES ('Chicago'), ('Seattle'), ('Online');

SET SQL_SAFE_UPDATES = 0;
DELETE FROM dojos;

INSERT INTO dojos (id)
VALUES (4), (5), (6);

INSERT INTO ninjas (first_name, last_name, age, dojo_id) VALUES 
    ('James', 'Williams', 35, 4), ('Sara', 'Williams-Amato', 33, 4),  ('Bertram', 'Witley', 37, 4),
    ('David', 'Elmore', 35, 5), ('Jeremy', 'Littleton', 35, 5), ('Shaq', 'Williams', 27, 5), 
    ('Lilah', 'Amato', 10, 6), ('Joe', 'Amato', 45, 6), ('Minnie', 'Williams-Amato', 14, 6);
        
SELECT * FROM dojos
LEFT JOIN ninjas ON dojos.id = ninjas.dojo_id
WHERE dojos.id = 4;

SELECT * FROM dojos
LEFT JOIN ninjas ON dojos.id = ninjas.dojo_id
WHERE dojos.id = (SELECT dojo_id FROM ninjas ORDER BY dojo_id DESC LIMIT 1);

SELECT * FROM dojos
WHERE dojos.id = (SELECT dojo_id FROM ninjas ORDER BY dojo_id DESC LIMIT 1);
