
CREATE TABLE Trips (
    id INT,
    client_id INT,
    driver_id INT,
    city_id INT,
    status VARCHAR(50),
    request_at VARCHAR(50)
);

CREATE TABLE Users (
    users_id INT,
    banned VARCHAR(50),
    role VARCHAR(50)
);


INSERT INTO Users (users_id, banned, role) VALUES
(1,  'No',  'client'),
(2,  'Yes', 'client'),
(3,  'No',  'client'),
(4,  'No',  'client'),
(10, 'No',  'driver'),
(11, 'No',  'driver'),
(12, 'No',  'driver'),
(13, 'No',  'driver'),
(14, 'Yes', 'driver'),
(15, 'No',  'driver');


INSERT INTO Trips 
(id, client_id, driver_id, city_id, status, request_at) VALUES
(1, 1, 10, 1, 'completed',           '2013-10-01'),
(2, 2, 11, 1, 'cancelled_by_driver', '2013-10-01'),
(3, 3, 12, 6, 'completed',           '2013-10-01'),
(4, 4, 13, 6, 'cancelled_by_client', '2013-10-01'),
(5, 1, 14, 6, 'cancelled_by_driver', '2013-10-02'),
(6, 3, 12, 6, 'completed',           '2013-10-02'),
(7, 4, 13, 6, 'completed',           '2013-10-02'),
(8, 2, 12, 12, 'completed',          '2013-10-03'),
(9, 3, 10, 12, 'completed',          '2013-10-03'),
(10, 4, 13, 12, 'cancelled_by_driver', '2013-10-03');



/* trips-and-users

Write a SQL query to find the cancellation rate of requests with unbanned users
(both client and driver must not be banned) each day between "2013-10-01" and "2013-10-03".
Round Cancellation Rate to two decimal points.

The cancellation rate is computed by dividing the number of canceled (by client or driver)
requests with unbanned users by the total number of requests with unbanned users on that day.
*/ 
-- SELECT  
-- CASE
-- WHEN t.status LIKE 'cancelled%' THEN 1 ELS2 0 END
-- FROM Trips t
-- INNER JOIN Users u
-- ON t.driver_id = u.user_id


select request_at,
	count(case 
		when status in ('cancelled_by_client','cancelled_by_driver') then 1
		else null
	end )as cancel_req,
	count(*) as total_req,
	1.0 * count(case 
		when status in ('cancelled_by_client','cancelled_by_driver') then 1
		else null
	end)/count(*) * 100 as cancel_percent
from trips t
inner join users c on c.users_id = t.client_id
inner join users d on d.users_id = t.driver_id
where c.banned = 'No' and d.banned = 'No'
group by request_at


/*select request_at,
	count(case 
		when status in ('cancelled_by_client','cancelled_by_driver') then 1
		else null
	end )as cancel_req,
	count(*) as total_req,
	1.0 * count(case 
		when status in ('cancelled_by_client','cancelled_by_driver') then 1
		else null
	end)/count(*) * 100 as cancel_percent
from trips t
inner join users c on c.users_id = t.client_id
where c.banned = 'No'  AND request_at >= '2013-10-01'
  AND request_at < '2013-10-04'
group by request_at */

SELECT * FROM users

SELECT * FROM trips
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
create table icc_world_cup
(
Team_1 Varchar(20),
Team_2 Varchar(20),
Winner Varchar(20)
);
INSERT INTO icc_world_cup values('India','SL','India');
INSERT INTO icc_world_cup values('SL','Aus','Aus');
INSERT INTO icc_world_cup values('SA','Eng','Eng');
INSERT INTO icc_world_cup values('Eng','NZ','NZ');
INSERT INTO icc_world_cup values('Aus','India','India');
-----------------
select * from icc_world_cup;

SELECT team_name,
    COUNT(*) AS matches_played,
    SUM(CASE 
    WHEN winner = team_name THEN 1 ELSE 0 
    END) AS wins,
    SUM(CASE 
    WHEN winner <> team_name THEN 1 ELSE 0 
    END) AS losses
FROM (
    SELECT team_1 AS team_name, winner
    FROM icc_world_cup
    UNION ALL
    SELECT team_2 AS team_name, winner
    FROM icc_world_cup
) AS team
GROUP BY team_name
ORDER BY team_name;

