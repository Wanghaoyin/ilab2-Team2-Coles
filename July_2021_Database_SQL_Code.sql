-- Upload the CSV file into DBeaver 
-- Create the July 2021 database 

CREATE TABLE July_2021_New AS 

SELECT *, ROW_NUMBER() OVER (PARTITION BY actorId ORDER BY timestamp) as row_number 

FROM July2021 j;

-- Counting the number of rows  
SELECT count(*)
FROM July_2021_New jn ;
-- 3,392,713 rows in total 