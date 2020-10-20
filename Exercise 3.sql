-- EXERCISE Q11 Create a SELECT statement that includes the following fields:
#Pno, 
#Street, 
#Rooms, 
#Rent,
#Owner No
#Staff No

SELECT  Pno, Street, Rooms, Rent, Ono, Sno FROM property_for_rent;

#Q12: Now add a condition to the above to show where property = PG4

SELECT  Pno, Street, Rooms, Rent, Ono, Sno FROM property_for_rent
WHERE Pno = 'PG4';

#Q13: Now add a condition for owner = CO46

SELECT  Pno, Street, Rooms, Rent, Ono, Sno FROM property_for_rent
WHERE Ono = 'CO46';

#Q14: For properties that the rent is greater than 400
SELECT  Pno, Street, Rooms, Rent, Ono, Sno FROM property_for_rent
WHERE rent > 400;

#Q15: For properties that the rent is between 355 and 470

SELECT  Pno, Street, Rooms, Rent, Ono, Sno FROM property_for_rent
WHERE rent BETWEEN 355 AND 470;

#Q16: Create an SQL statement that shows the property with the highest no of rooms;

SELECT  Pno, Street, Rooms, Rent, Ono, Sno FROM property_for_rent
WHERE Rooms = (SELECT MAX(Rooms) FROM property_for_rent);

#Q17: Create an SQL statement that shows the property with the lowest no of rooms

SELECT  Pno, Street, Rooms, Rent, Ono, Sno FROM property_for_rent
WHERE Rooms = (SELECT MIN(Rooms) FROM property_for_rent);

#Q18: Create an SQL statement that shows the average employee salary

SELECT AVG(SALARY) from staff;

#Q19: Create an SQL statement that shows the first record only from the Renter Table

SELECT  * FROM Renter
LIMIT 1;

#Q20: Create an SQL statement that shows the staff who are Female and less than 40 years of age.

SELECT Fname, Lname, 2019-YEAR(DOB) AS Age, Sex FROM staff
WHERE (SELECT 2019-YEAR(DOB)) <40 AND Sex = 'F';