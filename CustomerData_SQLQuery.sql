select * from [dbo].[CustomerData_Project]

--------Total Number of Customers from Each Region----------
select Region, count (CustomerID) as Total_Customers
from [dbo].[CustomerData_Project]
group by Region
order by Region asc

---------Most Popular Subscription Type by the Number of Customers---------
select top 1 SubscriptionType, count (CustomerID) 
as Total_Customers
from [dbo].[CustomerData_Project]
group by SubscriptionType
order by Total_Customers desc

--------Canceled Subscription Within 6 Months--------
update [dbo].[CustomerData_Project]
set Canceled = 0
   where Canceled = 'True'
update [dbo].[CustomerData_Project]
set Canceled = 1
   where Canceled = 'False'

select count (CustomerID) as Canceled_Subscription
from [dbo].[CustomerData_Project]
where Canceled = 0
and SubscriptionEnd>=dateadd (month, -6, getdate())

---------Average Subscription Duration for all Customers--------
select AVG(datediff(day, SubscriptionStart, SubscriptionEnd))
as Average_Subscription_Duration
from [dbo].[CustomerData_Project]

-------Subscription Longer than 12 Months----------
select count (CustomerID) as Subscription_For_12Months
from [dbo].[CustomerData_Project]
where SubscriptionStart<=dateadd(month, -12, getdate())

--------Total Revenue by SubscriptionType----------
select SubscriptionType, sum (Revenue) as Total_Revenue
from [dbo].[CustomerData_Project]
group by SubscriptionType
order by Total_Revenue desc

---------Top 3 Region by Subscription Cancellation-----------
select top 3 Region, count (CustomerID) 
as Subscription_Cancellation
from [dbo].[CustomerData_Project]
where Canceled = 0
group by Region
order by Subscription_Cancellation

------Total Number of Active and Canceled Subscription------
select sum (case when canceled = 0 then 1 else 0 end) 
as Total_Canceled,
sum (case when canceled = 1 then 1 else 0 end) 
as Total_Active
from [dbo].[CustomerData_Project]