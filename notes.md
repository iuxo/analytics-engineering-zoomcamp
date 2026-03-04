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