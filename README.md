 # LITA-CAPSTONE-PROJECT

 ### Project Title: Sales Transaction Data and Customer Subscription Data For PowerHouse Hub
 [Project Overview](#project-overview)
 
 [Field Descriptions for PowerHouse Hub SalesData](#Field-Descriptions-for-powerHouse-hub-salesdata)
 

### Project Overview
The aim of this project is to analyze the SalesData and CustomerData for PowerHouse Hub in identifying the trends, customer behaviours, sales and regional performance. By examining the trends using the required tools across the product demand, regional sales distribution and subscription patterns, we gain valuable insights into the key factors that influence the sales productivity and customer interest. The key insights gotten from this analysis will help the Hub to make data-driven decisions for a strategic growths, improved customer satisfaction, and optimized sales performance. The processing involves the collection of the data, loading the data, cleaning and analyzing it using tools like Excel, Structured Query Language, and PowerBI. 

### Field Descriptions for PowerHouse Hub SalesData
- OrderID: A unique identifier for each sales order.
- CustomerID: A unique identifier for each customer.
- Product: Each product purchased by the customer within the Hub.
- Region: The location were the order was placed by each customer.
- OrderDate: The date when the order was place by each customer.
- Quantity: The number of units sold for each product in an order.
- UnitPrice: The price per unit of each product.
- Total Sales: The total sales generated for each order placed calculated as Quantity * UnitPrice.

### Field Descriptions for PowerHouse Hub CustomerData
- CustomerID: A unique identifier for each customer.
- CustomerName: The name of each customer.
- Region: The location associating with the customer.
- SubscriptionType:The type of subscription that each customer signed up for, e.g basic, standard, premium.
- SubscriptionStart: The date the subscription began.
- SubscriptionEnd: The date the subscription ended.
- Canceled: This indicate whether the subscription was canceled (Boolean).
- Revenue: The total revenue generation during the subscription period.
- SubscriptionDuration: The duration of the subscription in days.
- Renewed: The binary indicator that shows whether customer renewed their subscription.

### Data Source
The main data source used for this analysis are 'SalesData.csv' and 'CustomerData.csv' which can be freely downloadeded from online sites such as Kaggle, FRED or any other data repository site.

### Tools Used
The following tools are used the analyze the data for the Hub;
- Mircrosoft Excel [Download Here](https://www.microsoft.com).
For data cleaning and analysis
- Structured Query Language (SQL) [Download Here](https://www.microsoft.com/en-us/sql-server/sql-server-downloads).
For querying databases
- Microsoft Power BI Desktop [Download Here](https://www.microsoft.com/en-us/power-platform/products/power-bi/downloads).
For visualization

### Data Cleaning and Preparation
In the initial phase of the Data cleaning and preparations, the following actions was performed;
- Data loading and inspection
- Handling missing variables 
- Data cleaning and formatting

### Exploratory Data Analysis
EDA is used to investigate the data set and summarize the main characteristics such as;

### For PowerHouse Hub SalesData
1. Retrieve the total sales for each product category. 
2. Find the number of sales transactions in each region. 
3. Find the highest-selling product by total sales value. 
4. Calculate total revenue per product. 
5. Calculate monthly sales totals for the current year. 
6. Find the top 5 customers by total purchase amount. 
7. Calculate the percentage of total sales contributed by each region. 
8. Identify products with no sales in the last quarter.

### For PowerHouse Hub CustomerData
1. Retrieve the total number of customers from each region. 
2. Find the most popular subscription type by the number of customers. 
3. Find customers who canceled their subscriptions within 6 months. 
4. Calculate the average subscription duration for all customers. 
5. Find customers with subscriptions longer than 12 months. 
6. Calculate total revenue by subscription type. 
7. Find the top 3 regions by subscription cancellations. 
8. Find the total number of active and canceled subscriptions.

### Basic Statistics for PowerHouse Hub SalesData
- Total sales: 2 Million
- Total number of transactions: 9,921
- Number of product: 6

### Basic Statistics for PowerHouse Hub CustomerData
- Sum of revenue: 68 Million
- Number of renewed subscription: 18612
- Number of cancelled subscription: 151715
- Total number of customers: 33787
- Number of subscription type: 3

### Data Analysis
This is where we include some basic lines of code/queries or even some of the DAX expressions used during the analysis;

### Pivot Tables for PowerHouse Hub SalesData 
Below is the pivot tables used to summarizes; 
- Total sales by product
- Total sales by region
- Total sales by month
- Average of total sales by product
- Average of total sales by region
- Percentage of total sales by product
- Percentage of total sales by region
- Total quantity by product
- Total quantity by region
- Percentage of total quantity by product
- Percentage of total quantity by region

![PSalesData](https://github.com/user-attachments/assets/6b0078fc-8263-4242-b5d2-b05ef2a4a783)

![PSalesData 2](https://github.com/user-attachments/assets/d1f743e4-e708-43de-bfb5-f6c6793fdd02)

![PSalesData 3](https://github.com/user-attachments/assets/3f594369-e1e2-41c7-889a-7a571773c636)

### Pivot Tables for PowerHouse Hub CustomerData
Below is the pivot tables used to summarizes;
- Count of CustomerID by SubscriptionType
- Average of SubscriptionDuration by SubscriptionType
- SubscriptionType by Revenue
- Region by Sum of Revenue
- SubscriptionType by Sum of Renewed
- Identification of Cancellation and Renewed

![PCustomerData](https://github.com/user-attachments/assets/25ec21a2-f19b-487a-92ad-ccc44fe98bab)

![PCustomerData 2](https://github.com/user-attachments/assets/50acba79-0f1c-4547-9227-fc2e9fa312e9)

### SQL Queries for PowerHouse Hub SalesData
The lines of queries used for the Exploratory Data Analysis in the PowerHouse Hub SalesData include;

- To select all the table in the PowerHouse Hub SalesData

```SQL
Select * from [dbo].[SalesData_Project]
```

![SQLsalesdata](https://github.com/user-attachments/assets/6960e806-31a6-4cf6-9777-c2b02ce1f680)

- Total sales by product category: Retrieve the total sales for each product category

```SQL
select Product, Sum (Quantity*UnitPrice) as TotalSales
from [dbo].[SalesData_Project]
group by Product
order by TotalSales desc
```

![SQL salesdata 2](https://github.com/user-attachments/assets/9c044a46-6af2-4798-a8c8-6c7c32e3c85a)

- Sales transactions by region: Find the number of sales transactions in each region

```SQL
select Region, Count (OrderID) as No_of_Sales_Transaction
from [dbo].[SalesData_Project]
group by Region
order by No_of_Sales_Transaction asc
```

![SQLsalesdata 3](https://github.com/user-attachments/assets/b7db3a59-126b-4ebe-904f-056a514e7df8)

- Highest selling product: Find the highest selling product by total sales value

```SQL
select top 1 Product, Sum (Quantity*UnitPrice) 
as Highest_Selling_Product
from [dbo].[SalesData_Project]
group by Product
```

![SQLsalesdata 4](https://github.com/user-attachments/assets/efccb84e-36a7-4639-a411-4e0a94f85a3d)

- Total revenue per product: Calculate total revenue per product

```SQL
select OrderID, Sum (Quantity*UnitPrice) as Total_Revenue
from [dbo].[SalesData_Project]
group by OrderID
order by Total_Revenue desc
```

![SQLsalesdata 5](https://github.com/user-attachments/assets/4edcc3f2-74eb-44ec-95b4-146bdd7b7cde)

- Find the total monthly sales by the current year

```SQL
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
```

![SQLsalesdata 6](https://github.com/user-attachments/assets/605981a5-def2-4310-a4c9-f5821b2271c4)

- Top 5 customer by purchase Amount: Find the 5 top customer by total purchase amount

```SQL
select top 5 Customer_Id, Sum (Quantity*UnitPrice) as Total_Purchase_Amount
from [dbo].[SalesData_Project]
group by Customer_Id
order by Total_Purchase_Amount desc
```

![SQLsalesdata 7](https://github.com/user-attachments/assets/d61d2c73-256b-4798-bc4c-d6e4e90ad313)

- Sales contribution by region: Calculate the percentage of total sales contributed by each region

```SQL
select Region, sum (Quantity*UnitPrice) as Total_Sales,
sum (Quantity*UnitPrice)*100.0/(select sum (Quantity*UnitPrice) from[dbo].[SalesData_Project]) 
as Percentage_of_Total_Sales
from [dbo].[SalesData_Project]
group by Region
order by Percentage_of_Total_Sales desc
```

![SQLsalesdata 8](https://github.com/user-attachments/assets/f9a2ee46-aa22-40e9-a54c-2b16846bc9e2)

- Products with no sales in last quarter: Identify products with no sales in the last quarter
```SQL
select distinct product from [dbo].[SalesData_Project]
where product Not In (select product from [dbo].[SalesData_Project]
where OrderDate >= DateAdd (quarter, -1, GetDate()) and 
OrderDate < GetDate())
```

![SQLsalesdata 9](https://github.com/user-attachments/assets/fd070692-9d18-4838-9cc5-908205beb88d)

### SQL Queries for PowerHouse Hub CustomerData
The lines of queries used for the Exploratory Data Analysis in the PowerHouse Hub CustomerData include;

- To select all the table in the PowerHouse Hub CustomerData

```SQL
Select * from [dbo].[CustomerData_Project]
```

![SQLcustomerdata](https://github.com/user-attachments/assets/620a6af8-aaee-4bfc-90ff-e2e2279b480d)

- Total customer by region: Retrieve the total number of customers from each region

```SQL
select Region, count (CustomerID) as Total_Customers
from [dbo].[CustomerData_Project]
group by Region
order by Region asc
```

![SQLcustomerdata 2](https://github.com/user-attachments/assets/941149bd-7bac-4212-9424-b7db3cf7c1cd)

- Most popular subscription type: Find the most popular subscription type by the number of customers

```SQL
select top 1 SubscriptionType, count (CustomerID) 
as Total_Customers
from [dbo].[CustomerData_Project]
group by SubscriptionType
order by Total_Customers desc
```

![sqlcustomerdata 3](https://github.com/user-attachments/assets/2da9fcdf-3695-4397-ab94-7614488b8ba1)

- Canceled within 6 months: Find customers who canceled their subscription within 6 months

```SQL
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
```

![sqlcustomerdata 4](https://github.com/user-attachments/assets/747e715e-934a-4f61-80af-6a9c9eac9c89)

- Average subscription duration: Calculate the average subscription duration for all customers

```SQL
select AVG(datediff(day, SubscriptionStart, SubscriptionEnd))
as Average_Subscription_Duration
from [dbo].[CustomerData_Project]
```

![sqlcustomerdata 5](https://github.com/user-attachments/assets/78864667-1870-4684-82a0-ca84c0051489)

- Customer with subscription longer than 12 months: Find customer with subscription longer than 12 months

```SQL
select count (CustomerID) as Subscription_For_12Months
from [dbo].[CustomerData_Project]
where SubscriptionStart<=dateadd(month, -12, getdate())
```

![sqlcustomerdata 6](https://github.com/user-attachments/assets/8345dccf-d611-40d3-aaa2-6ca793b76f25)

- Total revenue by subscription type: Calculate total revenue by subscription type

```SQL
select SubscriptionType, sum (Revenue) as Total_Revenue
from [dbo].[CustomerData_Project]
group by SubscriptionType
order by Total_Revenue desc
```

![sqlcustomerdata 7](https://github.com/user-attachments/assets/64c0474b-0e57-4539-9484-0e3073f2cd53)

- Top 3 regions by subscription cancellations: Find the top 3 regions by subscription cancellations

```SQL
select top 3 Region, count (CustomerID) 
as Subscription_Cancellation
from [dbo].[CustomerData_Project]
where Canceled = 0
group by Region
order by Subscription_Cancellation
```

![sqlcustomerdata 8](https://github.com/user-attachments/assets/13f28f73-f5ab-48de-a2d7-b8095be9b21b)

- Total active and canceled subscriptions: Find the total number of active and canceled subscriptions

```SQL
select sum (case when canceled = 0 then 1 else 0 end) 
as Total_Canceled,
sum (case when canceled = 1 then 1 else 0 end) 
as Total_Active
from [dbo].[CustomerData_Project]
```

![sqlcustomerdata 9](https://github.com/user-attachments/assets/22f49396-79c7-4df1-8c8b-5336800e2fe6)

### Data Visualization
Data visualization for PowerHouse Hub SalesData

![SalesData Visualization](https://github.com/user-attachments/assets/27a9c28a-9c0a-4e00-8cac-9e0dc90d0039)

Data visualization for PowerHouse Hub CustomerData

![CustomerData Visualization](https://github.com/user-attachments/assets/39d857ea-052b-491f-8d6f-4f9150880752)

### My Results

### PowerHouse Hub SalesData
The key insights generated from the PowerHouse Hub SalesData revealed the best-selling product in a region, season, quarter, or particular month. The total sales or revenue of the SalesData shows that the Hub has a good sales figure from the total transaction of 9,921 while the Average Order Value on how much the customer spends per transaction. Out of the 6 products sold in the Hub, shoes have the highest selling rate at 29.19% while socks have the lowest selling rate at 8.6%, and South has the highest sales volume in the region while West has the least sales volume. February's highest monthly sales trend may be due to seasonal events, such as the much-anticipated time for lovers to celebrate their love, as the month has been known as the Month of Love. This results in customers likely to purchase gifts for their loved ones and the Hub running a special promotion or sale for the celebration.  

### PowerHouse Hub CustomerData
From the PowerHouse Hub CustomerData analysis, a total revenue of 68 Million was generated, while the Hub has an average revenue of 2K and 33,787 subscribers from 4 regions. The Hub has three types of subscription which are Basic, Standard, and Premium, the basic has the highest subscription type with 50% of the total number of customers subscribed. Out of 33,787 subscribers, 18,612 renewed their subscriptions having the highest of subscribers for the basic with 64%, and 18% for standard and premium respectively. 
The region (East, South, North, and West) subscription pattern gave an impressive outcome, with little difference from the sum of revenue generated. This can be a result of well-structured marketing strategies. Also, it can be discovered from the analysis that, there is no cancellation from the subscribers from the Eastern region. It can also be associated with good marketing strategies.
The basic subscription type happens to meet the needs and expectations of customers, indicating strong satisfaction with the plan.

### Recommendation

### PowerHouse Hub SalesData
- With a high-selling product, there can be leverage on its popularity by offering more discounts or limited offers to increase rapid sales. There can be an expansion of the product line by introducing new styles to capture the customer's interest while with the low product, a customer survey can be conducted or the use of customer feedback to detect the reason behind the low sales. While that is done, promotion tactics can be introduced to increase visibility and encourage purchases.
- Increase product awareness in regions having low sales to boost and double the marketing efforts to sustain the South's high sales.
- Implement targeting seasonal campaigns by identifying profitable quarters or months in a year.
- Encourage loyal customers who spent above a certain amount or a regular customer.

### PowerHouse Hub CustomerData
- Addition of limited-time features for the Basic plan subscribers to encourage new sign-ups.
- The promotion tactics or strategies used for the Basic plan to get more subscribers can be used in enhancing other subscription types.
- Implement strategies such as customer surveys or feedback for customer retention.
- Develop a promotion or campaign to encourage the Basic subscribers to upgrade to Standard or Premium by highlighting additional services or offering free trials for some days, weeks, or months.
