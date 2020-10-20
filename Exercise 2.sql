-- Exercise Q1 How many properties are there for Rent? 4
select count(*) from property_for_rent;
select count(Pno) from property_for_rent;

-- Salary of all people
-- 

-- Exercise Q2 How many Branches are there? 4
select count(*) from branch;
select count(Bno) from branch;
select * from branch;

-- Exercise Q3 How many Staff are there? 6
select count(*) from staff;

-- Exercise Q4 List the Staff in B5?
select * from staff
where Bno='B5';

-- Exercise Q5 List the number of staff per branch?
select Bno,count(*) as staffNo from staff
group by Bno;

-- Exercise Q6 How many Viewings were there for property number PA14?
select * from viewing
where Pno='PA14';

-- Exercise Q7 What is the total Salary bill in the company? 102k
select sum(salary) from staff;

-- Exercise Q8 Who is the highest paid? max function
select fname as firstName, lname as lastName, salary from staff
where salary=(select max(salary) from staff);

-- Exercise Q9 Find the owners do not live in Glasgow?
select * from owner
where address not like'%Glasgow%';

-- Exercise Q10 Find Owners whose last names end in ‘Y’
select * from owner
where lname like '%Y';

