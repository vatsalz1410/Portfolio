##Nth Salary methods
##1 Limit 
/* select * from empsalarydetails
order by salary desc
limit 6; */

##2
/* select * from empsalarydetails
order by salary desc
limit 6,1; */

##3 Limit and sub query
/* select * from
(select * from empsalarydetails
order by salary desc
limit 6) as emp1
order by salary
limit 1; */

##4 Dense Rank
/* with sal_cte as
(select *,
Dense_Rank() over (order by Salary desc) as Sal_order from empsalarydetails)  
select * from sal_cte where Sal_order = 6; */

##5 use of Row num, Rank, Dense_Rank
/* select *,
Row_number() over (order by Salary desc) as RowNum,
Rank() over (order by Salary desc) as RankCol,
Dense_Rank() over (order by Salary desc) as DenseRank
from empsalarydetails; */