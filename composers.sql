#I'll now create a COMPOSERS table with the name of the composer, the era in which they live, and the number of songs by them to be performed by the symphony

CREATE TABLE COMPOSERS (
	NAME varchar(100) NOT NULL PRIMARY KEY,
	ERA varchar(100),
	SONGS INT 
	);

#Now I'll insert the data directly from the SONGS table

INSERT INTO COMPOSERS (NAME)
SELECT DISTINCT COMPOSER
FROM SONGS;
