DROP TABLE crime_trends


CREATE TABLE crime_trends(
	Incident_Datetime varchar(100) not null,
	Incident_Date date not null,
	Incident_Time time not null,
	Incident_Year int not null,
	Incident_Day_of_Week varchar(20) not null,
	Report_Datetime varchar(100) not null,
	Row_ID bigserial not null, 
	Incident_ID int not null,
	Incident_Number int not null,
	Report_Type_Code varchar(5) not null,
	Report_Type_Description varchar(100) not null,
	Incident_Code varchar(10) not null,
	Incident_Description varchar(100) not null,
	Resolution varchar(100) not null,
	Police_District varchar(100) not null);

SELECT * FROM crime_trends;