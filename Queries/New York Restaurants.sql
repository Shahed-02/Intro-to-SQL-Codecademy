-- SELECT ALL 
SELECT * 
FROM nomnom;

-- DISTINCT 
SELECT DISTINCT neighborhood
FROM nomnom;

-- DISTINCT
SELECT DISTINCT cuisine
FROM nomnom;


-- WHERE
SELECT *
FROM nomnom 
WHERE cuisine = 'Chinese';

-- WHERE 
SELECT *
FROM nomnom 
WHERE review >= 4;


-- WHERE
SELECT *
FROM nomnom 
WHERE review >= 4;

-- WHERE with more than 1 condition using AND 
SELECT *
FROM nomnom 
WHERE cuisine = 'Italian'
AND price = '$$$';

-- LIKE 
SELECT *
FROM nomnom 
WHERE name  LIKE  '%meatball%';

-- OR
SELECT *
FROM nomnom 
WHERE neighborhood = 'Midtown'
OR neighborhood = 'Downtown'
 OR neighborhood = 'Chinatown';



 -- NULL
 SELECT *
 FROM nomnom
 WHERE health IS NULL;


 -- LIMIT 
 SELECT * 
 FROM nomnom
 ORDER BY review DESC
 LIMIT 10;

-- CASE
SELECT name, 
CASE 
    WHEN review > 4.5 THEN 'Extraordinary'  
    WHEN review > 4 THEN 'Excellent'  
    WHEN review > 3 THEN 'Good'
    WHEN review > 2 THEN 'Fair'    
    ELSE  'Poor'
END AS 'Review' 
FROM nomnom;