#Now I'll create the CONCERTS table, which will include the concerts found in the songs table as well as the ones on the website that don't mention specific songs. The date, time, and location will be the information for opening day.

create table CONCERTS (
	NAME VARCHAR(200) NOT NULL PRIMARY KEY,
	CONCERTTYPE VARCHAR(200),
	CONDUCTOR VARCHAR (100) NULL,
	GUESTS VARCHAR(200) NULL,
	DATE DATE,
	TIME TIME,
	LOCATION VARCHAR(100)
	);

#To simplify inserting information I will use an INSERT SELECT statement to directly copy the concerts and conductors from the SONGS table

INSERT INTO CONCERTS (NAME, CONDUCTOR)
SELECT DISTINCT CONCERT, CONDUCTOR 
FROM SONGS;
