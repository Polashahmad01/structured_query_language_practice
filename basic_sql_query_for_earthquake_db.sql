-- EarthQuake Database

-- SELECT * FROM earthquake;
-- SELECT COUNT(*) FROM earthquake;
-- SELECT place, magnitude, occurred_on FROM earthquake;
-- SELECT occurred_on, magnitude, place FROM earthquake;
-- SELECT * FROM earthquake WHERE  occurred_on >= '2000-01-01';
-- SELECT * FROM earthquake WHERE occurred_on >= '2010-01-01' AND occurred_on <= '2010-12-31';
-- SELECT * FROM earthquake WHERE occurred_on >= '2010-01-01' AND occurred_on <= '2010-12-31' ORDER BY magnitude DESC LIMIT 1;


-- SELECT * FROM earthquake;
-- SELECT * FROM earthquake LIMIT 1;
-- SELECT COUNT(*) FROM earthquake;
-- SELECT MIN(occurred_on), MAX(occurred_on) FROM earthquake;
-- SELECT MIN(magnitude), MAX(magnitude) FROM earthquake;
-- SElECT cause FROM earthquake;
-- SELECT DISTINCT cause FROM earthquake;
-- SELECT COUNT(*) FROM earthquake WHERE cause = 'earthquake';
-- SELECT COUNT(*) FROM earthquake WHERE cause = 'nuclear explosion';
-- SELECT COUNT(*) FROM earthquake WHERE cause = 'explosion';
-- SELECT * FROM earthquake WHERE cause = 'explosion';
-- SELECT place, magnitude, occurred_on FROM earthquake WHERE cause = 'nuclear explosion' ORDER BY occurred_on DESC LIMIT 1;
-- SELECT place, magnitude, occurred_on FROM earthquake ORDER BY magnitude DESC LIMIT 10;
-- SELECT COUNT(*) FROM earthquake WHERE place LIKE '%Honshu%Japan%' AND occurred_on BETWEEN '2011-03-11' AND '2011-03-18';


