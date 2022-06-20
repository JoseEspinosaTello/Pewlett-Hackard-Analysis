# Pewlett-Hackard-Analysis

## Overview of the analysis:

Pewlett-Hackard is preparing for the "silver tsunami'. This event forsees a large number of Pewlet-Hackard current employees retiring in the forseeable future. Pewlet-Hackard has request a list of employees eligible for retirment. Additionally, Pewlet-Hackard wants to identify the following wave  of retirees an imploy a mentorship program. This mentorship program will help new employee adapt, by using the experienced next wave retirees as their mentors.

We will create a set of Queries that will provide the names of employees eligible for retirment, count of employees retiring from each title, and employees eligible for the mentorship program. Each query was used to generate a new table in the database and exported as a .csv file for review.

### Data Folder:
- retirement_titles.csv
- unique_titles.csv
- retiring_titles.csv
- mentorship_eligibilty.csv

### Queries Folder:
- Employee_Database_challenge.sql

## Results:

- Retirement Titles: This was our first attempt at identifying the current employees eligible for retirment. The table did return the desired results as we were able to find the employees eligilbe for retirment, however, there was a hiccup. This query returned duplicates of employees who have held multiple positions within the company over the years.

![retirement_titles](https://github.com/JoseEspinosaTello/Pewlett-Hackard-Analysis/blob/main/Resources/retirement_titles.png)

- DISTINCT Retirment Titles: Our second attempt at identifying the current employees elidigble for retirment has us using the DISTINCT statment to return a single row for each employee id. We set the empoyee id as the DISTINCT key and ORDER BY emploee id in ascending order and last date by descending order. This eliminates duplicates of the same employee id and helps filter the employees eligible for retirment, ultimately, making the list easier to read.

![unique_titles](https://github.com/JoseEspinosaTello/Pewlett-Hackard-Analysis/blob/main/Resources/unique_titles.png)

- Retiring Titles: The retiring titles query returns a count of the amount of employees retiring from each position. Once we found the list of retiring employees we were able to generate a count and GROUP BY employee title/postition.

![retiring_titles](https://github.com/JoseEspinosaTello/Pewlett-Hackard-Analysis/blob/main/Resources/retiring_titles.png)

- Mentorship Eligibility: This list identifies all current employees born 1965 as this is the next wave of employees eligible for retirment. To gather the information we joined three tables, selected DISTINCT on employee id, and ordered by employee id.

![mentorship_eligibility](https://github.com/JoseEspinosaTello/Pewlett-Hackard-Analysis/blob/main/Resources/mentorship_eligibility.png)


## Summary:

After review we were able to query, create tables, and export lists to .csv files in order to help prepare Pewlett-Hackard for the "silver tsunami". The company will now analize the information a determine how many employees they must hire in order to prepare for the change. The company will also be able to determine how many employees can be pulled from each department to act as mentors to the new employes. In order to further assist with the large picture we have generated queries that list the full count of retiring employees and employees eligible to act as menotors.

- Eligible for Mentorship by department

![ment_eli_query.png](https://github.com/JoseEspinosaTello/Pewlett-Hackard-Analysis/blob/main/Resources/ment_eli_query.png)

![ment_eli_result.png](https://github.com/JoseEspinosaTello/Pewlett-Hackard-Analysis/blob/main/Resources/ment_eli_result.png)
