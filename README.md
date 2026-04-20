# Eco Essentials Data Warehouse
Eco Essentials, a cookware company, is seeking to optimize its data infrastructure to gain deeper insights into its operations and customer behavior.

In this project we demonstrate the process of creating and populating a snowflake data warehouse from eco essentails source data and then visualizing and querying the cleaned data. In this project we use data technologies such as dbt, fivetran, tableau, and more. 

### Enterprise Data Warehouse Design
We began by creating a ERD design to hold the transformed data in a star schema. We use fact tables to represent sales and marketing email data related to the eco essentails business. We drafted a bus matrix outlining key business processes.


### Extract, Load, and Transform
Using fivetran we connected to Amazon RDS postgres database source tables to load the data we needed into our snowflake source table. From this point we use dbt to transform the data we loaded into the fact and dimesion tables in our star schema using the models that we define. 


### Testing & Scheduling
Our next step was to ensure data quality by running dbt tests. Using the teting functionality we are able to test our trasnformed data to make sure that it meets standards. These tests checked for things such as ensuring that a column contitains unqiue rows, relationships between tables properly established, that rows contain acceptable entires, and more. We also set up scheduling so that that the data will sync every 24 hours. 

### Data Visualization and Communication
Lastly we connected tableau to our snowflake datawarehouse so that we can visualize our transformed data. Using tableau we build a dashboard to look at both sales and email campaign data. After visualization the data can be used for effective decision making for eco essentials. The purpose of our visualizations is primarily to show trends across time and space to understand more aboout the business and how to make it more efficient. 