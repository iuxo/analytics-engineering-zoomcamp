# Kimball's Dimensional Modelling

* Deliver data understandable to busienss users
* Deliver fast query performance

Prioritse user undertandability and query performance over non redundant data (3NF)

# Elements of Dimensional Modelling

## Facts Tables
* Measurements metrics or facts
* Corresponds to a business process
* verbs
* Eg. Sales

## Dimensions Tables
* Business Entity
* Context to a business process
* Nouns
* Eg. Customer or Product

# Data Warehouse vs. Kitchen

## Stage Area
* Contains raw data
* Not meant to be exposed to everyone
* Eg. people who can handle raw ingredients (data)

## Processing area
* raw to data models
* efficiency
* Ensuring standards
* Eg. Cooks

## Presentation Area
* final presentation area
* Exposure to business stakeholders
* Eg. Dining hall

# DBT
* Transformation workflow to use SQL or python to deploy analytics code following best practices like modularity, portability, CI/CD, and documentation
* open source that allows the data transformation
* builds and runs a dbt project

## Types of Materializations
1. Ephemeral
Temporary
2. View
Virtual tables that can be queried
3. Table
Physical representations of data stored and created in db
4. Incremental
powerful feature of dbt that allows for efficient updates to existing tables, reducing ened for full data refreshes

# DBT PROJECT STRUCTURE

## analyses

- place for SQL files you don't want to expose
- data quality reports
- lots of people don't use it
  
## dbt_project.yml

- most important file in dbt
- tell dbt some defaults
- you need it to run dbt commands
- dbt, your profile should match the one in the `.dbt/profiles`

## macros

- behave like python functions (reusable logic)
- help encapsulate logic (in one place)
- can be easily tested

## models

dbt suggests 3 subfolders:
### staging

- Sources (raw table from db)
- staging files are 1 to 1 copy of your data with minimal cleaning steps:
    - data types
    - renaming columns
### intermediate

- anything that is not raw nor you want to expose
- no guidelines, just nice for ehavy duty cleaning or complex logic

### marts

- if it is in marts, it is ready for consumption (ideally)
- tables ready for dashboards
- properly modeled, clean tables (usually STAR schema)

## README.md

- documentation of project
- installation/setup guides
- contact info

## seeds

- space to upload csv and flat files (to add them to dbt later)
- quick and dirty approach (better to fix at source)

## snapshots

- take picture of table at a moment in time
- useful to track history of column

## tests

- a place to put assertions in SQL format
- a place for singular tests
- if this SQL command returns more than 0 rows, the dbt build fails

# Important for dbt

- need to match region for dbt
- need to have aliases in sql commands