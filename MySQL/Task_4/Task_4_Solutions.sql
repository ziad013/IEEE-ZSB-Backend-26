
//  Combine Two Tables

select p.firstName , p.lastName , A.city, A.state
from Person p
left join Address A 
on A.personId = p.personId
order by city;


//   Replace Employee ID With The Unique Identifier

select E.name , EU.unique_id 
from Employees E
left join EmployeeUNI EU
on EU.id = E.id
order by unique_id;


// Customer Who Visited but Did Not Make Any Transactions 

SELECT v.customer_id,
       COUNT(*)  count_no_trans
FROM Visits v
LEFT JOIN Transactions t
       ON v.visit_id = t.visit_id
WHERE t.transaction_id IS NULL
GROUP BY v.customer_id;



//  Project Employees I

select p.project_id , round(avg(experience_years),2) average_years
from Project p
inner join Employee E
on p.employee_id = E.employee_id
group by project_id
order by project_id;


//  Sales Person

SELECT s.name
FROM SalesPerson s
LEFT JOIN Orders o
    ON s.sales_id = o.sales_id
LEFT JOIN Company c
    ON o.com_id = c.com_id
       AND c.name = 'RED'
GROUP BY s.sales_id, s.name
HAVING COUNT(c.com_id) = 0;


//  Rising Temperature


-I have no solution


// Average Time of Process per Machine

SELECT 
    a.machine_id,
    ROUND(AVG(b.timestamp - a.timestamp), 3) AS processing_time
FROM Activity a
INNER JOIN Activity b
    ON a.machine_id = b.machine_id
   AND a.process_id = b.process_id
   AND a.activity_type = 'start'
   AND b.activity_type = 'end'
GROUP BY a.machine_id
ORDER BY a.machine_id;


//  Students and Examinations


SELECT 
    s.student_id,
    s.student_name,
    sub.subject_name,
    COUNT(e.student_id)  attended_exams
FROM Students s
CROSS JOIN Subjects sub
LEFT JOIN Examinations e
    ON s.student_id = e.student_id
   AND sub.subject_name = e.subject_name
GROUP BY s.student_id,sub.subject_name
ORDER BY s.student_id, sub.subject_name;



// Managers with at Least 5 Direct Reports

select E2.name from Employee E1
inner join Employee E2
on E1.managerId = E2.id
group by E2.id
Having count(E1.id) >= 5
order by E2.id;


// Confirmation Rate

SELECT 
    s.user_id,
    ROUND(
        IFNULL(
            (
                SELECT COUNT(*)
                FROM Confirmations c
                WHERE c.user_id = s.user_id
                  AND c.action = 'confirmed'
            )
            /
            (
                SELECT COUNT(*)
                FROM Confirmations c
                WHERE c.user_id = s.user_id
            ),
            0
        ),
        2
    )  confirmation_rate
FROM Signups s
ORDER BY s.user_id;


// Product Sales Analysis III

SELECT s.product_id,s.year AS first_year,s.quantity,s.price
FROM Sales s 
WHERE s.year = (
    SELECT MIN(year)
    FROM Sales
    WHERE product_id = s.product_id
);


// Market Analysis I

select u.user_id buyer_id , u.join_date , count(o.order_id) orders_in_2019
from Users u
left join Orders o
on o.buyer_id = u.user_id
and 
year(o.order_date) = 2019
group by u.user_id ,u.join_date
order by o.buyer_id;