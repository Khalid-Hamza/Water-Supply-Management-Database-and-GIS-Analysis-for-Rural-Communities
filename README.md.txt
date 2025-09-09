AEP Water Supply Database Project
Project Overview

This project simulates the management of potable water supply (AEP) for multiple rural communities (douars) under the Basin Hydraulics Agency (ABH). The water supply comes from wells tapping into different aquifers in the ABH service area.

The project focuses on both a standard relational database and a spatial/geodatabase approach, combining traditional SQL data management with geospatial data for location-based analysis.

Database Design
Entities

Douar: Represents a rural community with attributes such as population, water needs, and location.

Forage: Represents wells used for water extraction, with attributes like flow rate, associated aquifer, and location.

Nappe: Represents aquifers (geological formations storing groundwater) with attributes such as type, area, and location.

Relationships

Each douar is supplied by one or more forages.

Each forage is associated with a specific nappe.

The database schema is implemented with three tables: douar, forage, and nappe, supporting both standard SQL queries and spatial/geographic queries.

Implementation Steps

Create the database: AEP (supports both relational and spatial data).

Define tables: douar, forage, nappe according to provided attribute specifications.

Populate tables using INSERT INTO commands with the supplied dataset.

Perform SQL queries, including:

Listing douars with population ≥ 400 (excluding coordinates).

Updating population of a specific douar (tihli) to 399.

Identifying high-flow wells (>75 L/s) in the “Sais deep” aquifer.

Listing douars supplied by specific wells (e.g., 1238 or 1414).

Calculating total population served by a specific well or aquifer.

Matching douars with the same water needs as Ben Smim (excluding Ben Smim).

Finding the most productive well in the “Sais deep” aquifer.

Listing wells drilled in limestone formations.

Calculating average flow rate per aquifer (descending order).

Calculating the area of selected aquifers (numbers 1, 3, and 4).

Technical Stack

Database: PostgreSQL with PostGIS extension for geospatial data support

SQL Features Used: CREATE DATABASE, CREATE TABLE, INSERT INTO, UPDATE, SELECT, aggregation functions (SUM, AVG, MAX), filtering (WHERE), joins, ordering (ORDER BY), and spatial queries.

Data Types: Both standard relational data (integers, text, floats) and spatial data (geometry for points and polygons).

How to Use

Clone the repository.

Connect to your PostgreSQL server.

Run the SQL scripts in this order:

create_database.sql

create_tables.sql

insert_data.sql

queries.sql (contains all required queries)

Explore queries to analyze the water supply network both from relational and spatial perspectives.

Project Goals

Manage and query water supply data efficiently using both relational and geospatial approaches.

Provide insights into water distribution, well productivity, and population coverage.

Demonstrate the use of PostgreSQL + PostGIS for practical water resource management.