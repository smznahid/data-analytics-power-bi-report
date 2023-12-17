# Data Analysis using Power BI
---
## Introduction:
 This is a project assigned to me by AiCore as part of my Data Analytics Bootcamp, during this project I have been tasked with creating a report, by importing and cleaning data from various sources in Power BI.

---

## Technology/framework used:
- Power BI Desktop
- DAX Language
- M Language
- VSCode
- CLI

---

## Step 1: Importing and Transforming Data

1. First I used the SQL Server Import Wizard to import and transform the Orders Table from an Azure SQL Database. Then Using the Power Query Editor I removed any privacy violating columns, and split order date and shipping date into 2 seperate column, and using the built in column visualisations to see the Column Quality, I could remove rows with NULL values.

1. I then used the CSV import wizard to import and transform the Products table. Using the column from example function in the Power Query Editor I created a [unit] and [values] column from the [weights] column. As well as from the Data view I created a converted value which finds any weights not in kg and converts them to kg.

1. To import the Stores dimension table I used to azure blob storage import wizard with an account key to securely extract the data.

1. For the customers table I used the folder import wizard, this was so I could merge 3 csv files to create one table. Using the column from examples function I created a new column to combine the first and last name to get the [Full Name].

---

## Step 2: Creating the Star Data Model

1. First I created a Date table with different forms of dates, this is to have a continuous date table use Power BI's Time Intelligence.

1. After creating the Date table I went to the model view so I could create the relationships to different tables and made sure the correct relationships were active.
![Model View](https://i.imgur.com/z39WCnp.png)
1. I then created a Measures Table and filled them with Key Measures.   
![Measures Table](https://i.imgur.com/ISJMZnG.png)
1. After I was finished with these Measures, I created a new calculated column in Stores table which used the SWITCH function to turn the Stores[Country Code] into their respective country. Then I made sure each column had the right data category assigned. Tghen I finally create Date and Geography hierarchies.

---

## Step 3: Setting up the Report.

1. This step is relatively simple, in the **Data View** I created 4 pages for each level of detail.
![pages](https://i.imgur.com/LjIyMkC.png)

1. I then added a side bar to each page that will be used for navigation (we will come back to this at a later step).

---

## Step 4: Building the Customer Detail Page.

1. I began with selecting a theme for my report using the in-built themes. After that I created 2 headline cards, one for the total unique customers, and one for the revenue per customer.

![cards](https://i.imgur.com/xVUKhZL.png)
1. I then created 2 summary charts, one is a donut chart and the other a column chart, to show respectively the "Customers by Country", and the "Customers by Category".
![charts](https://i.imgur.com/PcWVzFH.png)
1. Following this I created a line chart with a trend line and forecasting into the future with a confidence interval of 95% of the total customers by a date hierarchy.
1. After the line graph, I created a table to show the full names total orders and Total Revenue of different customers, and by using the TopN Method I filtered it out to the top 20 customers.
![table of customers] (https://i.imgur.com/Sn3k4Vc.png)
1. I created 3 more cards to show the top customer in more depth.
![Top Customer](https://i.imgur.com/H8F7XAF.png)
1. Finally I Created a Date Slicer to give the user a more customisable experience in the report.
1. After tweaking the page I ended up with a Customer Detail Page looking as follows:
![Customer Page](https://i.imgur.com/tVpQnrm.png)

## Step 5: Building the Executive Summary Page.

1. To kick off the Executive Summary I created 3 cards, corresponding to Total Revenue, Total Profit and Total Orders
![Exec Cards](https://i.imgur.com/khYNPiE.png)

1. After those cards I created a total revenue line graph, this is the same as the customers line graph but for revenue.
![Revenue line graph](https://i.imgur.com/1s03Kdf.png)
1. I then added the Summary Charts.
![Donut charts](https://i.imgur.com/dn7lq9h.png)
![Bar Chart](https://i.imgur.com/AxOjOiu.png)
1. Moving on from the summary charts I wanted to create some KPI visualisations. In order to do this I first had to create some quarterly measures (for revenue, profit and orders as that was the KPI indicators I chose) as well as target measures for those categories.
![KPI](https://i.imgur.com/G9qeDlz.png)
1. Putting it all together I got an executive summary page looking like this:
![Exec Summary](https://i.imgur.com/MX1SFTg.png)