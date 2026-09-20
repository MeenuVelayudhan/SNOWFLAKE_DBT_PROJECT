# Airbnb Data Engineering Project

## Project Overview

This project demonstrates an end-to-end data engineering pipeline built using **Snowflake and dbt** to transform Airbnb data into clean, reliable, and analytics-ready datasets.

The project follows a **Bronze → Silver → Gold** data transformation architecture. Raw Airbnb data is loaded into Snowflake and transformed using dbt to create curated datasets for analytics and reporting.

The project focuses on data transformation, data quality, data modeling, historical data tracking, and building a scalable analytics-ready data platform.

## Business Problem

Airbnb generates large volumes of data related to listings, hosts, bookings, and customer activity. Raw data often requires cleaning, transformation, validation, and historical tracking before it can be used for reliable analytics.

The objective of this project is to build a structured data transformation pipeline that:

- Processes raw Airbnb data using Snowflake.
- Cleans and standardizes the source data.
- Transforms the data through Bronze, Silver, and Gold layers.
- Maintains historical changes to important business entities.
- Applies data quality checks using dbt.
- Produces analytics-ready datasets for reporting and business analysis.