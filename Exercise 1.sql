-- Exercises Q1
use Football;
insert into premiership(team, played, points)
values
('Celtic',12,34),
('Man Utd',11,29),
('Chelsea',10,25),
('Liverpool',12,23),
('Arsenal',14,26);
        
select * from premiership;

-- Exercises Q2a
update premiership
SET team='Celtic FC'
where team='Celtic';

-- Exercises Q2b
update premiership
set played=played+2;

-- Exercises Q3
delete from premiership
where team='Chelsea';

-- Exercises Q4
delete from premiership;

-- Exercises Q5
select * from premiership
where played > 12 AND points < 30;