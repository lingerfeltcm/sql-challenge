# sql-challenge

## Data Engineering
I began by inspecting each of the excel files to make sure that I could create an accurate entity relationships diagram (ERD) by checking for duplicate values in my files especially for data that would be used as PKs, FKs, or generally be referenced by data from other tables. It made the most sense to me to have my two least connected csvs on either end of my diagram to reduce crossover lines, which is something that I find very distracting. This set of data seems to be a bit abnormal in terms of relationships given that it has an equal number of one-to-one relationships (particularly the employee_id fields) and one to many relationships (titles and departments). 

## Data Analysis
After sketching out my ERD, I proceeded to create the schema in SQL and import the data from the csvs to the tables. From there I constructed the queries and checked to make sure it was pulling everything correctly. I also tabbed between connected items because it helps me visualise the independent steps of each query instead of haveing everything aligned on the left-hand side of the coding space. All my queries populated properly. I hope to come back to do the optional challenge, but I lack the time to do so at the moment.
