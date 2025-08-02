SQL-based analysis of a simulated Google Analytics 4 (GA4) dataset, exploring user behavior, product interactions, session dynamics, and event tracking.

**Goals**

-Analyzing user behavior and engagement patterns

-Understanding product interactions and sales funnels

-Examining session characteristics and traffic sources

-Exploring event trends over time and user journeys

**Tools Used**

PostgreSQL,
pgAdmin 4

**File Structure**

00_create_tables.sql — SQL script to create database schema (tables and constraints)

01_users_analysis.sql — Explore user demographics and behavior

02_products_analysis.sql — Analyze product catalog and interactions

03_sessions_analysis.sql — Examine session sources, duration, and frequency

04_events_analysis.sql — Investigate event types, counts, and user engagement

/data (folder) — CSV files containing the dataset for import:

users.csv, products.csv, sessions.csv, events.csv

**Data**

This project includes simulated GA4 data exported as CSV files located in the /data folder.

CSV files:

users.csv — User profiles and IDs
products.csv — Product catalog with categories and prices
sessions.csv — Session records including timestamps and traffic sources
events.csv — Event logs tracking user interactions

To set up the database:

1.Create the tables by running 00_create_tables.sql in PostgreSQL (e.g., via pgAdmin).

2.Import the CSV files into their corresponding tables using PostgreSQL's COPY command or pgAdmin import tool.

3.Run the analysis queries from the respective .sql files.
