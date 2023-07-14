DROP TABLE balt_crime_trends;

CREATE TABLE balt_crime_trends(
	OBJECTID int,
	CCNO varchar(20),
	CrimeDateTime varchar(50),
	CrimeCode varchar(10),
	Location varchar(100),
	Description varchar(100),
	Post real,
	Gender varchar(10),
	Age real,
	Race varchar(100),
	Ethnicity varchar(100),
	District varchar(20),
	Neighborhood varchar(50),
	Latitude double precision,
	Longitude double precision,
	Total_Incidents int);
	
SELECT * FROM balt_crime_trends;	