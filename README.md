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

## Step 1: Importing and Transforming Data
The first milestone in completing the making of my report in power bi, I had to import data from various sources:
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

