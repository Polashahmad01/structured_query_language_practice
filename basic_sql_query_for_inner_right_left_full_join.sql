-- Different Types Of Join

-- CREATE TABLE martian (
-- 	martian_id SERIAL,
-- 	first_name CHARACTER VARYING,
-- 	last_name CHARACTER VARYING,
-- 	base_id INTEGER,
-- 	super_id INTEGER
-- );

-- CREATE TABLE base (
-- 	base_id SERIAL,
-- 	base_name CHARACTER VARYING,
-- 	founded date
-- );

-- CREATE TABLE visitor (
-- 	visitor_id SERIAL,
-- 	host_id INTEGER,
-- 	first_name CHARACTER VARYING,
-- 	last_name CHARACTER VARYING
-- );

-- CREATE TABLE inventory (
-- 	base_id INTEGER,
-- 	supply_id INTEGER,
-- 	quantity INTEGER
-- );

-- CREATE TABLE supply (
-- 	supply_id SERIAL,
-- 	supply_name CHARACTER VARYING,
-- 	description TEXT,
-- 	quantity INTEGER
-- );

-- INSERT INTO martian (first_name, last_name, base_id, super_id) 
-- VALUES
-- ('Ray', 'Bradbury', 1, null),
-- ('John', 'Black', 4, 10),
-- ('Samuel', 'Hinkston', 4, 2),
-- ('Jeff', 'Spender', 1, 9),
-- ('Sam', 'Parkhill', 2, 12),
-- ('Elma', 'Parkhill', 3, 8),
-- ('Melissa', 'Lewis', 1, 1),
-- ('Mark', 'Watney', 3, null),
-- ('Beth', 'Johanssen', 1, 1),
-- ('Chris', 'Beck', 4, null),
-- ('Nathaniel', 'York', 4, 2),
-- ('Elon', 'Musk', 2, null),
-- ('John', 'Carter', null, 8);

-- SELECT * FROM martian;


-- INSERT INTO base (base_name, founded)
-- VALUES
-- ('Tharsisland', '2037-06-03'),
-- ('Valles Marineris 2.0', '2040-12-01'),
-- ('Gale Cratertown', '2041-08-15'),
-- ('New New New York', '2042-02-10'),
-- ('Olympus Mons Spa & Casino', '2037-06-03');

-- SELECT * FROM base;

-- INSERT INTO visitor (host_id, first_name, last_name)
-- VALUES
-- (7, 'George', 'Ambrose'),
-- (1, 'Kris', 'Cardenas'),
-- (9, 'Priscilla', 'Lane'),
-- (11, 'Jane', 'Thornton'),
-- (null, 'Doug', 'Stavenger'),
-- (null, 'Jamie', 'Waterman'),
-- (8, 'Martin', 'Humphries');

-- SELECT * FROM visitor;

-- INSERT INTO inventory
-- VALUES
-- (1, 1, 8),
-- (1, 3, 5),
-- (1, 5, 1),
-- (1, 6, 2),
-- (1, 8, 12),
-- (1, 9, 1),
-- (2, 4, 5),
-- (2, 8, 62),
-- (2, 10, 37),
-- (3, 2, 11),
-- (3, 7, 2),
-- (4, 10, 91);

-- SELECT * FROM inventory;

-- INSERT INTO supply (supply_name, description, quantity)
-- VALUES
-- ('Solar Panel', 'Standard 1x1 meter cell', 912),
-- ('Water Filter', 'This takes things out of your water so its drinkable', 6),
-- ('Duct Tape', 'A 10 meter roll of duct tape for ALL your repairs', 951),
-- ('Ketchup', 'Its Ketchup...', 206),
-- ('Battery Cell', 'Standard 1000 kAh battery cell for power grid (heavy item).', 17),
-- ('USB 6.0 Cable', 'Carbon fiber coated / 15 TBps spool', 42),
-- ('Fuzzy Duster', 'It gets dusty around here, be prepared!', 19),
-- ('Mars Bar', 'The ORIGINAL nutrient bar made with the finest bioengineered ingredients.', 3801),
-- ('Air Filter', 'Removes 99% of all Martian dust from your ventilation unit.', 23),
-- ('Famous Rays Frozen Pizza', 'This Martian favorite is covered in all your favorite toppings. 1 flavor only.', 823);


-- SELECT * FROM supply;




-- SELECT * FROM visitor, martian;

-- SELECT visitor.first_name, visitor.last_name, 
-- martian.first_name, martian.last_name
-- FROM visitor
-- INNER JOIN martian
-- ON visitor.host_id = martian.martian_id;

-- SELECT visitor.first_name, visitor.last_name, 
-- martian.first_name, martian.last_name
-- FROM visitor
-- LEFT JOIN martian
-- ON visitor.host_id = martian.martian_id;

-- SELECT v.first_name, v.last_name, m.first_name, m.last_name
-- FROM visitor AS v
-- LEFT JOIN martian AS m
-- ON v.host_id = m.martian_id;

-- SELECT v.first_name AS visitor_fn, v.last_name AS visitor_ln, m.first_name AS martian_fn, m.last_name AS martian_ln
-- FROM visitor AS v
-- LEFT JOIN martian AS m
-- ON v.host_id = m.martian_id;

-- SELECT *
-- FROM martian AS m
-- INNER JOIN martian AS s
-- ON m.super_id = s.martian_id
-- ORDER BY m.martian_id;

-- SELECT *
-- FROM martian AS m
-- LEFT JOIN martian AS s
-- ON m.super_id = s.martian_id
-- ORDER BY m.martian_id;

-- SELECT m.first_name AS fn, m.last_name AS ln, s.first_name AS super_fn, s.last_name AS super_ln
-- FROM martian AS m
-- LEFT JOIN martian AS s
-- ON m.super_id = s.martian_id
-- ORDER BY m.martian_id;

-- SELECT * FROM inventory WHERE base_id = 1;

-- SELECT *
-- FROM (SELECT * FROM inventory WHERE base_id = 1) AS i
-- RIGHT JOIN supply AS s
-- ON i.supply_id = s.supply_id
-- ORDER BY s.supply_id;

-- UPDATE supply SET quantity = 0 WHERE quantity = NULL;

-- SELECT s.supply_id, i.quantity, s.supply_name, s.description
-- FROM (SELECT * FROM inventory WHERE base_id = 1) AS i
-- RIGHT JOIN supply AS s
-- ON i.supply_id = s.supply_id
-- ORDER BY s.supply_id;


-- SELECT *
-- FROM visitor AS v
-- FULL JOIN martian AS m
-- ON v.host_id = m.martian_id
-- WHERE martian_id IS NULL OR v.visitor_id IS NULL;

-- SELECT v.first_name AS visitor_fn, v.last_name AS visitor_ln,
-- m.first_name AS martian_fn, m.last_name AS martian_ln
-- FROM visitor AS v
-- FULL JOIN martian AS m
-- ON v.host_id = m.martian_id
-- WHERE martian_id IS NULL OR v.visitor_id IS NULL;














