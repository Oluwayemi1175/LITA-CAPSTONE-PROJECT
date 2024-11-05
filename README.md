 # LITA-CAPSTONE-PROJECT

### Project Overview
The aim of this project is to analyze the SalesData and CustomerData for PowerHouse Hub in identifying the trends, customer behaviours, sales and regional performance. By examining the trends using the required tools across the product demand, regional sales distribution and subscription patterns, we gain valuable insights into the key factors that influence the sales productivity and customer interest. The key insights gotten from this analysis will help the Hub to make data-driven decisions for a strategic growths, improved customer satisfaction, and optimized sales performance. The processing involves the collection of the data, loading the data, cleaning and analyzing it using tools like Excel, Structured Query Language, and PowerBI. 

### Field Descriptions For PowerHouse Hub SalesData
- OrderID: A unique identifier for each sales order.
- CustomerID: A unique identifier for each customer.
- Product: Each product purchased by the customer within the Hub.
- Region: The location were the order was placed by each customer.
- OrderDate: The date when the order was place by each customer.
- Quantity: The number of units sold for each product in an order.
- UnitPrice: The price per unit of each product.
- Total Sales: The total sales generated for each order placed calculated as Quantity * UnitPrice.

### Field Descriptions For PowerHouse Hub CustomerData
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

### Data Analysis
This is where we include some basic lines of code/queries or even some of the DAX expressions used during the analysis;

### PowerHouse Hub SalesData 
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
