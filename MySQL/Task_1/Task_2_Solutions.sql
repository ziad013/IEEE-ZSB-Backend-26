 problem 1

SELECT product_id FROM Products
WHERE low_fats = 'Y' AND recyclable = 'Y'
ORDER BY  product_id DESC;



problem 2

SELECT name,population,area FROM World
WHERE area >= 3000000 OR population >= 25000000
ORDER BY name;


problem 3 

SELECT name FROM Customer
WHERE referee_id != 2 OR referee_id IS NULL
ORDER BY ID;