Create Database Capstone_Project

select * from [dbo].[SalesData_Project]

---------Total Sales For Product Category------------
select Product, Sum (Quantity*UnitPrice) as TotalSales
from [dbo].[SalesData_Project]
group by Product
order by TotalSales desc

-------Number of Sales Transaction in Each Region--------
select Region, Count (OrderID) as No_of_Sales_Transaction
from [dbo].[SalesData_Project]
group by Region
order by No_of_Sales_Transaction asc

-------Highest-Selling Product by Total Sales--------
select top 1 Product, Sum (Quantity*UnitPrice) 
as Highest_Selling_Product
from [dbo].[SalesData_Project]
group by Product

--------Total Revenue per Product--------
select OrderID, Sum (Quantity*UnitPrice) as Total_Revenue
from [dbo].[SalesData_Project]
group by OrderID
order by Total_Revenue desc

--------Total Monthly Sales for the Current Year-------
Select 
  Case Month (OrderDate)
    When 1 then 'January'
	When 2 then 'February'
	When 3 then 'March'
	When 4 then 'April'
	When 5 then 'May'
	When 6 then 'June'
	When 7 then 'July'
	When 8 then 'August'
	When 9 then 'September'
	When 10 then 'October'
	When 11 then 'November'
	When 12 then 'December'
  End as Month, sum (Quantity*UnitPrice) as Monthly_Total_Sales
from [dbo].[SalesData_Project]
where
year(OrderDate)=year(getdate())
group by Month(OrderDate)
order by Month(OrderDate)

----------Top 5 Customers by Total Purchase Amount-------------
select top 5 Customer_Id, Sum (Quantity*UnitPrice) as Total_Purchase_Amount
from [dbo].[SalesData_Project]
group by Customer_Id
order by Total_Purchase_Amount desc

-----------Percentage of Total Sales Contributed by each Region------------
select Region, sum (Quantity*UnitPrice) as Total_Sales,
sum (Quantity*UnitPrice)*100.0/(select sum (Quantity*UnitPrice) from[dbo].[SalesData_Project]) 
as Percentage_of_Total_Sales
from [dbo].[SalesData_Project]
group by Region
order by Percentage_of_Total_Sales desc

--------Product with no Sales in the Last Quarter----------
select distinct product from [dbo].[SalesData_Project]
where product Not In (select product from [dbo].[SalesData_Project]
where OrderDate >= DateAdd (quarter, -1, GetDate()) and 
OrderDate < GetDate())