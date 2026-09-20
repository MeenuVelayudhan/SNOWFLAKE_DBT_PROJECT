# Airbnb Data Engineering Project

## Project Overview

This project demonstrates an end-to-end data engineering pipeline using **AWS, Snowflake, and dbt** to transform Airbnb data into clean, reliable, and analytics-ready datasets.

Airbnb source data is loaded from **AWS into Snowflake**, where it is transformed using dbt following a **Bronze → Silver → Gold** data architecture.

The project focuses on data ingestion, data transformation, data quality, historical data tracking, dimensional modeling, and building scalable analytics-ready datasets.

## Technology Stack

| Technology | Purpose |
|---|---|
| **AWS** | Source/storage layer for Airbnb datasets |
| **Snowflake** | Cloud data warehouse for loading, storing, and processing Airbnb data |
| **dbt Core** | Data transformation, data modeling, testing, and documentation |
| **SQL** | Data transformation and business logic |
| **Python** | Project and environment management |
| **uv** | Python package and dependency management |
| **Git** | Version control |
| **GitHub** | Source code repository and project collaboration |

## Data Architecture

The project follows a layered data architecture where Airbnb source data is loaded from AWS into Snowflake and transformed using dbt.

```text
AWS
Airbnb Source Data
       |
       v
   Snowflake
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

### 4. Data Transformation Workflow

Change the beginning to:

```markdown
## Data Transformation Workflow

The data flows from AWS into Snowflake and then through multiple dbt transformation layers.

### 1. Source Data

Raw Airbnb datasets are stored in AWS and used as the source data for the pipeline.

### 2. Data Loading

The source Airbnb data is loaded from AWS into Snowflake for centralized storage and processing.

### 3. Bronze Layer

The Bronze layer performs the initial transformation of the source data.

Key activities include:

- Loading source data from AWS into Snowflake
- Standardizing column names
- Applying basic data type transformations
- Creating initial dbt models

## Business Problem

Airbnb generates large volumes of data related to listings, hosts, bookings, and customer activity. Source data stored in AWS requires loading, cleaning, transformation, validation, and historical tracking before it can be used for reliable analytics.

The objective of this project is to build a structured data engineering pipeline that:

- Loads Airbnb source data from AWS into Snowflake.
- Processes and transforms the data using dbt.
- Transforms the data through Bronze, Silver, and Gold layers.
- Maintains historical changes to important business entities.
- Applies data quality checks using dbt.
- Produces analytics-ready datasets for reporting and business analysis.

## Data Models

The project contains dbt models covering key Airbnb business entities. Source data is loaded from AWS into Snowflake and transformed through the Bronze, Silver, and Gold layers.

The key business entities include:

- **Listings** – Property and listing information
- **Hosts** – Host-related information
- **Bookings** – Booking and reservation information
- **Dimensions** – Historical and descriptive business entities
- **Facts** – Analytical measures used for reporting

## Data Quality

Data quality is an important part of the pipeline. Airbnb data loaded from AWS into Snowflake is validated during the dbt transformation process.

dbt tests are used to improve data reliability and ensure that the transformed datasets meet expected data quality requirements.

The project includes checks for:

- Primary key uniqueness
- Not-null constraints
- Valid relationships between models
- Source data validation
- Data consistency
- Duplicate record detection

## dbt Snapshots & Historical Tracking

dbt snapshots are used to track historical changes in important Airbnb business entities.

After the source data is loaded from AWS into Snowflake, dbt snapshots capture changes to records over time instead of maintaining only the latest version.

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

## Project Structure

The project contains the dbt transformation layer responsible for processing Airbnb data loaded from AWS into Snowflake.

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

---

### 5. Key Project Features

You already added this, but use the updated version:

```markdown
## Key Project Features

- End-to-end Airbnb data engineering pipeline using AWS, Snowflake, and dbt
- Loaded Airbnb source data from AWS into Snowflake
- Snowflake-based data storage and processing
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

## Key Skills Demonstrated

- AWS data ingestion
- Snowflake
- dbt Core
- SQL
- Data transformation
- Bronze / Silver / Gold architecture
- Data modeling
- Dimensional modeling
- Slowly Changing Dimensions (SCD Type 2)
- dbt snapshots
- Data quality testing
- Data validation
- Git and GitHub
- Python
- uv

## Author

**Meenu Priya Velayudhan**

Data Engineer | Snowflake | dbt | AWS | Informatica | SQL | Python