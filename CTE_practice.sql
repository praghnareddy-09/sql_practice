------ CTE ----------

-- 1. Create and populate Person table
CREATE TABLE Person (
    PersonID INT PRIMARY KEY,
    Name VARCHAR(50),
    Email VARCHAR(100),
    Score INT
);

INSERT INTO Person (PersonID, Name, Email, Score) VALUES
(1, 'Alice', 'alice2018@hotmail.com', 88),
(2, 'Bob', 'bob2018@hotmail.com', 11),
(3, 'Davis', 'davis2018@hotmail.com', 27),
(4, 'Tara', 'tara2018@hotmail.com', 45),
(5, 'John', 'john2018@hotmail.com', 63);


-- 2. Create and populate PersonFriend table
CREATE TABLE PersonFriend (
    PersonID INT,
    FriendID INT,
    PRIMARY KEY (PersonID, FriendID),
    FOREIGN KEY (PersonID) REFERENCES Person(PersonID),
    FOREIGN KEY (FriendID) REFERENCES Person(PersonID)
);

INSERT INTO PersonFriend (PersonID, FriendID) VALUES
(1, 2),
(1, 3),
(2, 1),
(2, 3),
(3, 5),
(4, 2),
(4, 3),
(4, 5);

-- write a query to find personId,Name , no of friends, sum of marks of person
-- who have friends with total score greater than 100
WITH total_frnds AS
(
SELECT pf.PersonID,
       COUNT(pf.FriendID) AS no_of_friends
FROM PersonFriend pf
GROUP BY pf.PersonID;
)

---------------------------------------

WITH total_frnds AS
(
    SELECT 
        pf.PersonID,
        COUNT(pf.FriendID) AS no_of_friends,
        SUM(f.Score) AS friends_total_score
    FROM PersonFriend pf
    JOIN Person f
        ON pf.FriendID = f.PersonID
    GROUP BY pf.PersonID
)
SELECT 
    p.PersonID,
    p.Name,
    tf.no_of_friends,
    tf.friends_total_score
FROM Person p
JOIN total_frnds tf
    ON p.PersonID = tf.PersonID
WHERE tf.friends_total_score > 100;



