
// WHERE vs HAVING:

Where :
- used before group by
- doesn’t use with Aggregate Functions
- select * from student 
  where age < 25;

Having :
- used after group by
- use with Aggregate Functions
- select * from student 
  group by student_id
  Having count(*) > 10;



// DELETE vs TRUNCATE vs DROP:

Delete :
- exist where condition
-exist rollback
-remove selected rows
-DML

TRUNCATE :
-doesn’t where condition
-doesn’t exist rollback
-remove all rows
-DDL

Drop :
-doesn’t where condition
- doesn’t exist rollback
-remove table
-DDL


//  Order of Execution:

1-FROM

2-WHERE

3-GROUP BY

4-HAVING

5-SELECT

6-ORDER BY




// COUNT(*) vs COUNT(Column_Name):

COUNT(*) :
 count all the rows (even if value is NULL)

COUNT(Column_Name) :
  Count non-NULL values only



  // CHAR vs VARCHAR:

  char :
  -padding
  -fixed size
  -"Cat       "  because must fill all space
  -using 10 character

  varchar :
  -no padding
  -variable size
  -"cat" because didn’t must fill all space
   -using 3 character




