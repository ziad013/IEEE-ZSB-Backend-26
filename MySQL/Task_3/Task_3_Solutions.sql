
// Invalid Tweets

SELECT tweet_id FROM Tweets
WHERE CHAR_LENGTH(content) > 15
ORDER BY tweet_id;



// Fix Names in a Table 

SELECT 
    user_id,
    CONCAT(
        UPPER(SUBSTRING(name,1,1)),
        LOWER(SUBSTRING(name,2))
    ) As Name
FROM Users
ORDER BY user_id;


// Calculate Special Bonus

SELECT employee_id,
CASE 
  WHEN employee_id % 2 <> 0 AND name NOT LIKE 'M%' THEN salary
  else 0

END bonus
FROM Employees
ORDER BY employee_id;


// Patients With a Condition

SELECT * FROM Patients
WHERE conditions LIKE 'DIAB1%' OR conditions LIKE '% DIAB1%'
ORDER BY patient_id;

//  Find Total Time Spent by Each Employee

SELECT 
    event_day AS day,
    emp_id,
    SUM(out_time - in_time) AS total_time
FROM Employees
GROUP BY event_day, emp_id;


//  Find Followers Count

SELECT user_id , COUNT(follower_id) AS followers_count
FROM Followers
GROUP BY user_id
ORDER BY user_id;


// Daily Leads and Partners

SELECT date_id , make_name ,
    COUNT(DISTINCT lead_id) AS unique_leads,
    COUNT(DISTINCT partner_id) AS unique_partners
FROM DailySales
GROUP BY date_id,make_name
ORDER BY lead_id;


// Actors and Directors Who Cooperated At Least Three

SELECT actor_id,director_id
FROM ActorDirector
GROUP BY actor_id,director_id
HAVING COUNT(timestamp) >= 3
ORDER BY actor_id;


// Classes With at Least 5 Students

SELECT class FROM Courses
GROUP BY class 
HAVING COUNT(student) >= 5
ORDER BY class; 

// Game Play Analysis I

SELECT player_id , MIN(event_date) AS first_login
FROM  Activity
GROUP BY player_id
ORDER BY player_id;


// Capital Gain/Loss

SELECT 
    stock_name,
    SUM(
        CASE 
            WHEN operation = 'Sell' THEN price
            ELSE -price
        END
    ) AS capital_gain_loss
FROM Stocks
GROUP BY stock_name;



//  Second Highest Salary

SELECT 
    MAX(salary) AS SecondHighestSalary
FROM Employee
WHERE salary < (SELECT MAX(salary) FROM Employee);

