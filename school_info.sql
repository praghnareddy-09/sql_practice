


SELECT * FROM "school_info";


INSERT INTO "school_info" (id, name, grade, marks, pass_fail)
VALUES
('INT01', 'Rama', '1st', 24, 'yes'),
('INT02', 'Sita', '2nd', 23, 'yes'),
('INT03', 'Tom', '3rd', 19, 'yes'),
('INT05', 'Jack', '4th', 10, 'no'),
('INT08', 'Rose', '3rd', 5, 'no');

ALTER TABLE "school_info"
ALTER COLUMN id TYPE VARCHAR(10);

ALTER TABLE "school_info"
ALTER COLUMN grade TYPE VARCHAR(10);

ALTER TABLE "school_info"
RENAME COLUMN "pass/fail" TO "pass_fail";

UPDATE school_info
set name = 'Raju'
WHERE name = 'Rama'

SELECT *
FROM "school_info"
ORDER BY id;

SELECT *
FROM "school_info"; 
    ALTER TABLE "school_info"
    ADD COLUMN acd_year INT;
-------------------------------------
SELECT name, marks
FROM "school_info"
WHERE marks > (
    SELECT AVG(marks)
    FROM "school_info"
);
------------------------------
WITH passed_students AS (
    SELECT grade,
           marks
    FROM school_info
    WHERE pass_fail = 'yes'
)
SELECT grade,
       AVG(marks) AS avg_marks
FROM passed_students
GROUP BY grade