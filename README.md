# Pewlett-Hackard-Analysis

## Overview of the analysis:

Pewlet-Hackard is preparing for the "silver tsunami'. This event forsees a large number of Pewlet-Hackard current employees retiring in the forseeable future. Pewlet-Hackard has request a list of employees eligible for retirment. Additionally, Pewlet-Hackard wants to identify the following wave  of retirees an imploy a mentorship program. This mentorship program will help new employee adapt, by using the experienced next wave retirees as their mentors.

We will create a set of Queries that will provide the names of employees eligible for retirment, count of employees retiring from each title, and employees eligible for the mentorship program. Each query was used to generate a new table in the database and exported as a .csv file for review.

### Data Folder:
- retirement_titles.csv
- unique_titles.csv
- retiring_titles.csv
- mentorship_eligibilty.csv

### Queries Folder:
- Employee_Database_challenge.sql

## Results:
BY
- Retirement Titles: This was our first attempt at identifying the current employees eligible for retirment. The table did return the desired results as we were able to find the employees eligilbe for retirment, however, there was a hiccup. This query returned duplicates of employees who have held multiple positions within the company over the years.

![retirement_titles](https://github.com/JoseEspinosaTello/Pewlett-Hackard-Analysis/blob/main/Resources/retirement_titles.png)

- DISTINCT Retirment Titles: Our second attempt at identifying the current employees elidigble for retirment has us using the DISTINCT statment to return a single row for each employee id. We set the empoyee id as the DISTINCT key and ORDER BY emploee id in acesnding order and last date by decending order. This eliminates duplicates of the same employee id and helps filter the employees eligible for retirment, ultimately, making the list easier to read.

![unique_titles](https://github.com/JoseEspinosaTello/Pewlett-Hackard-Analysis/blob/main/Resources/unique_titles.png)

There is a bulleted list with four major points from the two analysis deliverables. (6 pt)
Summary:

The summary addresses the two questions and contains two additional queries or tables that may provide more insight. (5 pt)