# AEP Water Supply Database Project

## Project Overview
This project simulates the management of **potable water supply (AEP)** for multiple rural communities (douars) under the **Basin Hydraulics Agency (ABH)**. Water is supplied through wells tapping into different aquifers in the ABH service area.

The project combines a **standard relational database** and a **spatial/geodatabase** approach, allowing both traditional SQL data management and geospatial analysis for location-based insights.

---

## Database Design

### Entities
- **Douar**: Represents a rural community with attributes such as population, water needs, and location.  
- **Forage**: Represents wells used for water extraction, with attributes like flow rate, associated aquifer, and location.  
- **Nappe**: Represents aquifers (geological formations storing groundwater) with attributes such as type, area, and location.  

### Relationships
- Each **douar** is supplied by one or more **forages**.  
- Each **forage** is associated with a specific **nappe**.  

The schema includes **three main tables**: `douar`, `forage`, and `nappe`, supporting both standard SQL queries and spatial queries.

---

## Implementation Steps

1. **Create the database**: `AEP` (supports both relational and spatial data).  
2. **Define tables**: `douar`, `forage`, `nappe` according to provided specifications.  
3. **Populate tables** using `INSERT INTO` commands with the provided dataset.  
4. **Perform SQL queries**, including:  
   - List douars with population ≥ 400 (excluding coordinates).  
   - Update population of a specific douar (`tihli`) to 399.  
   - Identify high-flow wells (>75 L/s) in the “Sais deep” aquifer.  
   - List douars supplied by specific wells (e.g., 1238 or 1414).  
   - Calculate total population served by a specific well or aquifer.  
   - Match douars with the same water needs as `Ben Smim` (excluding Ben Smim).  
   - Find the most productive well in the “Sais deep” aquifer.  
   - List wells drilled in limestone formations.  
   - Calculate average flow rate per aquifer (descending order).  
   - Calculate the area of selected aquifers (numbers 1, 3, and 4).  

---

## Technical Stack
- **Database**: PostgreSQL with **PostGIS** extension for geospatial data.  
- **SQL Features Used**: `CREATE DATABASE`, `CREATE TABLE`, `INSERT INTO`, `UPDATE`, `SELECT`, aggregation functions (`SUM`, `AVG`, `MAX`), filtering (`WHERE`), joins, ordering (`ORDER BY`), and spatial queries.  
- **Data Types**: Standard relational data (integers, text, floats) and spatial data (geometry for points and polygons).  

---

## How to Use

1. **Clone the repository**.  
2. **Connect** to your PostgreSQL server.  
3. **Run the SQL scripts** in the following order:  
   - `create_database.sql`  
   - `create_tables.sql`  
   - `insert_data.sql`  
   - `queries.sql` (contains all required queries)  
4. Explore queries to analyze the water supply network from **both relational and spatial perspectives**.

---

## Project Goals
- Efficiently manage and query water supply data using **relational and geospatial approaches**.  
- Provide insights into water distribution, well productivity, and population coverage.  
- Demonstrate practical use of **PostgreSQL + PostGIS** for water resource management.
