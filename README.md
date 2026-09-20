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
```

## Bronze Layer

The Bronze layer contains the raw source data with minimal transformations.

## Silver Layer

The Silver layer cleans, standardizes, and transforms the raw data into structured datasets.

## Gold Layer

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
```
## Folder Description
```text
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
```
## Data Transformation Workflow

The data flows through multiple transformation layers using Snowflake and dbt.

### 1. Source Data

Raw Airbnb datasets containing information about listings, hosts, and bookings are used as the source data.

### 2. Bronze Layer

The Bronze layer performs the initial transformation of the source data.

Key activities include:

- Loading source data into Snowflake
- Standardizing column names
- Applying basic data type transformations
- Creating initial dbt models

Example models:

- `bronze_listings`
- `bronze_hosts`
- `bronze_bookings`

### 3. Silver Layer

The Silver layer applies more detailed data cleansing and business transformations.

Key activities include:

- Removing duplicate records
- Handling NULL values
- Standardizing data formats
- Applying business rules
- Joining related datasets
- Creating clean analytical entities

### 4. Gold Layer

The Gold layer produces curated datasets for analytics and reporting.

These models combine the transformed Silver-layer data into business-ready datasets that can be consumed by downstream reporting and analytics applications.

### 5. Data Quality Validation

dbt tests are executed against the transformed datasets to validate data quality and consistency.

```text
Source Data
     ↓
Snowflake
     ↓
Bronze Models
     ↓
Silver Models
     ↓
Gold Models
     ↓
Data Quality Tests
     ↓
Analytics / Reporting
```

## dbt Snapshots & Historical Tracking

dbt snapshots are used to track historical changes in important Airbnb business entities.

The snapshot models capture changes to records over time instead of only maintaining the latest version of the data.

This allows the project to answer questions such as:

- When did a listing change?
- What was the previous value?
- When did the change become effective?
- What is the current version of the record?

Example snapshot models:

- `dim_listings`
- `dim_hosts`
- `dim_bookings`

The snapshots maintain historical versions using fields such as:

- `dbt_valid_from`
- `dbt_valid_to`
- `dbt_scd_id`

This approach supports **Slowly Changing Dimension (SCD) Type 2** requirements and provides historical traceability for analytical use cases.

## Key Project Features

- End-to-end Airbnb data engineering pipeline using Snowflake and dbt
- Bronze, Silver, and Gold layered data architecture
- SQL-based data transformation and data modeling
- Data cleansing and standardization
- dbt data quality testing and validation
- dbt snapshots for historical data tracking
- Slowly Changing Dimension (SCD) Type 2 implementation
- Analytical models for listings, hosts, and bookings
- Reusable dbt models and macros
- Version control using Git and GitHub
- Python environment and dependency management using uv

## Security

Sensitive credentials and environment-specific configuration are not stored in the GitHub repository.

The following files and directories are excluded using `.gitignore`:

- `profiles.yml`
- `.env`
- `.venv/`
- `target/`
- `logs/`
- `dbt_packages/`
- `*.pem`
- `*.key`

Snowflake credentials and other sensitive configuration should be stored securely in the local environment and should never be committed to source control.


