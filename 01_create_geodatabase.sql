
-- CREATION OF GEODATABASE [AEP]
CREATE DATABASE AEP;
CREATE EXTENSION postgis;



-- CREATION OF TABLE [NAPPE]
CREATE TABLE nappe (
    num_nappe INTEGER PRIMARY KEY,
    name_nappe VARCHAR,
    aquifer_type VARCHAR
);

-- ADDING A GEOMETRY COLUMN TO [NAPPE]
SELECT AddGeometryColumn('nappe', 'coordinates', 26191, 'GEOMETRY', 2);



-- CREATION OF TABLE [BOREHOLE]
CREATE TABLE borehole (
    borehole_id INTEGER PRIMARY KEY,
    borehole_name VARCHAR,
    flow_rate INTEGER,
    aquifer INTEGER REFERENCES nappe(num_nappe)
);

-- ADDING A GEOMETRY COLUMN TO [BOREHOLE]
SELECT AddGeometryColumn('borehole', 'coordinates', 26191, 'GEOMETRY', 2);



-- CREATION OF TABLE [DOUAR]
CREATE TABLE douar (
    num_douar INTEGER PRIMARY KEY,
    name_douar VARCHAR, 
    population INTEGER,
    water_need INTEGER, 
    borehole INTEGER REFERENCES borehole(borehole_id)
);

-- ADDING A GEOMETRY COLUMN TO [DOUAR]
SELECT AddGeometryColumn('douar', 'coordinates', 26191, 'GEOMETRY', 2);
