

-- INSERT INTO martian 
-- (martian_id, first_name, last_name, base_id, super_id)
-- VALUES
-- (DEFAULT, 'Ray', 'Bradbury', 1, NULL),
-- (DEFAULT, 'John', 'Black', 4, 10),
-- (DEFAULT, 'Samuel', 'Hinkston', 4, 2),
-- (DEFAULT, 'Jeff', 'Spender', 1, 9),
-- (DEFAULT, 'Sam', 'Parkhill', 2, 12),
-- (DEFAULT, 'Elma', 'Parkhill', 3, 8),
-- (DEFAUlT, 'Melissa', 'Lewis', 1, 1),
-- (DEFAULT, 'Mark', 'Watney', 3, NULL),
-- (DEFAULT, 'Beth', 'Johanssen', 1, 1),
-- (DEFAULT, 'Chris', 'Beck', 4, NULL),
-- (DEFAULT, 'Nathaniel', 'York', 4, 2),
-- (DEFAULT, 'Elon', 'Musk', 2, NULL),
-- (DEFAULT, 'John', 'Carter', NULL, 8);

-- SELECT COUNT(*) FROM martian;
-- SELECT * FROM martian;

-- INSERT INTO base
-- (base_id, base_name, founded)
-- VALUES
-- (DEFAULT, 'Tharsisland', '2037-06-03'),
-- (DEFAULT, 'Valles Marineris 2.0', '2040-12-01'),
-- (DEFAULT, 'Gale Cratertown', '2014-08-16'),
-- (DEFAULT, 'New New New York', '2042-02-10'),
-- (DEFAULT, 'Olympus Mons Spa & Casino', NULL);

-- SELECT * FROM base;


-- SELECT *
-- FROM martian
-- INNER JOIN base
-- ON martian.base_id = base.base_id;


-- SELECT first_name, last_name, base_name
-- FROM martian
-- INNER JOIN base
-- ON martian.base_id = base.base_id;


-- SELECT *
-- FROM martian
-- INNER JOIN base
-- ON martian.base_id = base.base_id;

-- SELECT martian.martian_id, base.base_id, base.base_name
-- FROM martian
-- INNER JOIN base
-- ON martian.base_id = base.base_id;


-- SELECT m.martian_id, b.base_id, b.base_name
-- FROM martian AS m
-- INNER JOIN base AS b
-- ON m.base_id = b.base_id;

















