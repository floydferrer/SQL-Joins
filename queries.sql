-- write your queries here
-- 1 --
SELECT *
FROM owners
FULL JOIN vehicles
ON owners.id = vehicles.owner_id;

-- 2 --
SELECT first_name, last_name, COUNT(vehicles.id)
FROM owners
JOIN vehicles
ON owners.id = vehicles.owner_id
GROUP BY owners.id
ORDER BY COUNT(*), first_name;

-- 3 --
SELECT first_name, last_name, ROUND(AVG(vehicles.price)) AS average_price, COUNT(vehicles.id)
FROM owners
JOIN vehicles
ON owners.id = vehicles.owner_id
GROUP BY owners.id
HAVING AVG(vehicles.price) > 10000
ORDER BY COUNT(*) DESC, first_name;
