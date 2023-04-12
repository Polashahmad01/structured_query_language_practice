-- CREATE TABLE secret_user (
--   user_id serial,
--   first_name character varying,
--   last_name character varying,
--   code_name character varying,
--   country character varying,
--   organization character varying,
--   salary integer,
--   knows_kung_fu boolean
--   );

INSERT INTO secret_user (first_name, last_name, code_name, country, organization, salary, knows_kung_fu) VALUES ('Jimmy', 'Bond', '007', 'United Kingdom', 'M16', 97200, false),
('George', 'Smiley', 'Beggarman', 'United Kingdom', 'M16', 97200, false),
('Jason', 'Bourne', 'Delta One', 'United States', 'CIA', 115000, false),
('Jack', 'Ryan', null, 'United States', 'CIA', 85000, false),
('Ethan', 'Hunt', 'Bravo Echo 1-1', 'United States', 'IMF', 250000, false),
('Emma', 'Peel', 'Mrs. Peel', 'United Kingdom', 'M16', 97200, true),
('Susan', 'Hilton', 'Agent 99', 'United States', 'Control', 250000, false),
('Nick', 'Fury', 'Foxtrot', 'United States', 'SHIELD', 250000, false);


-- SELECT COUNT(*) FROM secret_user;
-- SELECT * FROM secret_user;

-- UPDATE secret_user SET first_name = 'James' WHERE user_id = 1;
-- SELECT * FROM secret_user ORDER BY user_id;
-- UPDATE secret_user SET code_name = 'Neo 2.0', salary = 115000 WHERE first_name = 'Jack' AND last_name = 'Ryan';
-- UPDATE secret_user SET salary = 115000 WHERE organization = 'M16';
-- SELECT * FROM secret_user ORDER BY user_id;
-- UPDATE secret_user SET knows_kung_fu = TRUE WHERE user_id IN (5, 7, 8);
-- UPDATE secret_user SET salary = 1.1*salary;
-- SELECT SUM(salary) FROM secret_user;













