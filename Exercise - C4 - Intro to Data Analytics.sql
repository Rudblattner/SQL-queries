USE dreamhome

##Question #1
SELECT renter.Lname, renter.Fname, viewing.comment FROM Renter
JOIN Viewing ON renter.rno = viewing.rno;


#Question #2
SELECT staff.Sno, Staff.Fname, Staff.Lname, staff.telno, Branch.bno, Branch.street
FROM Staff JOIN branch ON staff.bno  = branch.bno;

#Question #3
SELECT staff.Fname, staff.lname FROM staff
JOIN property_for_rent ON staff.sno = property_for_rent.sno
WHERE property_for_rent.pno = 'PA14';

#Question #4
SELECT branch.bno, branch.city, property_for_rent.bno, property_for_rent.city FROM branch
LEFT JOIN property_for_rent ON branch.bno = property_for_rent.bno
##WHERE branch.city = property_for_rent.city;

##staff.sno, staff.fname, staff.lname, staff.address, staff.TelNo, staff.Position, staff.sex, staff.DOB, staff.salary, staff.NIN, staff.bno
#Question #5
SELECT staff.*, branch.city FROM staff
RIGHT JOIN branch ON staff.bno = branch.bno
WHERE branch.city = 'Glasgow';

#Question #6
SELECT owner.*, property_for_rent.* FROM owner
RIGHT JOIN property_for_rent ON owner.ono = property_for_rent.ono
WHERE property_for_rent.city = 'Glasgow';