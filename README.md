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
