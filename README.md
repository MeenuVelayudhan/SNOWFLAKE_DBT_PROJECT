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

## Technology Stack

| Technology | Purpose |
|---|---|
| **Snowflake** | Cloud data warehouse for storing and processing Airbnb data |
| **dbt Core** | Data transformation, data modeling, testing, and documentation |
| **SQL** | Data transformation and business logic |
| **Python** | Project and environment management |
| **uv** | Python package and dependency management |
| **Git** | Version control |
| **GitHub** | Source code repository and project collaboration |

## Data Architecture

The project follows a layered data architecture:

```text
Raw Airbnb Data
       |
       v
   Bronze Layer
       |
       v
   Silver Layer
       |
       v
    Gold Layer
       |
       v
Analytics & Reporting

Bronze Layer

The Bronze layer contains the raw source data with minimal transformations.

Silver Layer

The Silver layer cleans, standardizes, and transforms the raw data into structured datasets.

Gold Layer

The Gold layer contains business-ready datasets designed for analytics and reporting.

## Data Models

The project contains models covering key Airbnb business entities:

- **Listings** – Property and listing information
- **Hosts** – Host-related information
- **Bookings** – Booking and reservation information
- **Dimensions** – Historical and descriptive business entities
- **Facts** – Analytical measures used for reporting

## Data Quality

dbt tests are used to improve data reliability and ensure that the transformed datasets meet expected data quality requirements.

The project includes checks for:

- Primary key uniqueness
- Not-null constraints
- Valid relationships between models
- Source data validation
- Data consistency

## Project Structure

```text
SNOWFLAKE_DBT_PROJECT/
│
├── aws_dbt_snowflake_project/
│   ├── analyses/
│   ├── macros/
│   ├── models/
│   │   ├── bronze/
│   │   ├── silver/
│   │   └── gold/
│   ├── seeds/
│   ├── snapshots/
│   ├── tests/
│   ├── dbt_project.yml
│   └── profiles.yml
│
├── src/
├── .gitignore
├── pyproject.toml
├── README.md
└── uv.lock

Folder Description
models/bronze/ – Raw data transformation models
models/silver/ – Cleaned and standardized datasets
models/gold/ – Business-ready analytical models
snapshots/ – Historical tracking of changing records
tests/ – Data quality and validation tests
macros/ – Reusable dbt SQL logic
seeds/ – Static reference data
analyses/ – Ad-hoc analytical SQL
dbt_project.yml – dbt project configuration
pyproject.toml – Python project and dependency configuration
uv.lock – Locked Python dependencies