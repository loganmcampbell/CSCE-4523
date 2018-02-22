
/*#1*/
-- Determine the number of trips approved for employees of Marketing Department (it's integer)
SELECT COUNT(ID) AS MARKETING_TRIPS FROM Trip  WHERE EMP_ID IN (SELECT ID FROM Employee WHERE Dept IN (SELECT Code FROM Dept WHERE Name = 'Marketing'));

/*2*/
-- Print names of employees who have been approved to take a trip but not have submitted any receipts
SELECT Name FROM Employee WHERE ID IN (SELECT Emp_ID FROM Trip WHERE ID NOT IN (SELECT ID FROM TRIP WHERE ID IN (SELECT Trip_ID FROM Expense)));

/*3*/
-- Find the trip with the highest estimated cost and print the name and contact person of the department where employee works
SELECT Name,Contact FROM Dept WHERE Code IN (SELECT Dept FROM Employee WHERE ID IN (SELECT Emp_ID FROM Trip WHERE Est_Cost = (SELECT MAX(Est_Cost) FROM Trip)));

/*4*/
-- Print the names of the department none of whose employees have been listed to take a trip (as per the Trip Table).
SELECT Name FROM Dept WHERE Code IN (SELECT Dept FROM Employee WHERE ID NOT IN (SELECT ID FROM Employee WHERE ID IN (SELECT Emp_ID FROM Trip)));

/*5*/
 -- Print the names of cities for which the corresponding trip's estimated cost is less than the average transportation cost.  Your result must not show a city name more than once.
SELECT To_City FROM Trip WHERE ID IN (SELECT Trip_ID FROM Expense WHERE Est_Cost  < (SELECT AVG(Amount) FROM Expense WHERE Type = 'T'));
