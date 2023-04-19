-- VIEWS

-- SELECT * FROM martian_confidential;
-- CREATE VIEW martian_public AS
-- SELECT martian_id, first_name, last_name, base_id, super_id
-- FROM martian_confidential;
-- SELECT * FROM martian_public;

-- CREATE VIEW people_on_mars AS
-- SELECT CONCAT('m', martian_id) AS id, first_name, last_name, 'martian' AS status FROM martian_public
-- UNION
-- SELECT CONCAT('v', visitor_id) AS id, first_name, last_name, 'visitor' AS status FROM visitor;


-- SELECT * FROM people_on_mars;

-- CREATE VIEW base_storage AS
-- SELECT b.base_id, s.supply_id, s.supply_name,
-- COALESCE((SELECT quantity FROM inventory WHERE base_id = b.base_id AND supply_id = s.supply_id), 0) AS quantity
-- FROM base AS b
-- CROSS JOIN supply AS s;

-- SELECT * FROM base_storage;















