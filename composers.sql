#I'll now create a COMPOSERS table with the name of the composer, the era in which they live, and the number of songs by them to be performed by the symphony

CREATE TABLE COMPOSERS (
	NAME varchar(100) NOT NULL PRIMARY KEY,
	ERA varchar(100),
	NATIONALITY varchar(100),
	SONGS INT 
	);

#Now I'll insert some data directly from the SONGS table

INSERT INTO COMPOSERS (NAME)
SELECT DISTINCT COMPOSER
FROM SONGS;

#To find the number of songs being performed by each composer, I'll use the count function and insert that integer.

SELECT COUNT(SONG_ID) FROM SONGS WHERE COMPOSER = 'Aaron Copland';
UPDATE COMPOSERS 
SET SONGS = 1, ERA = 'Modern', NATIONALITY = 'American'
WHERE NAME = 'Aaron Copland';

SELECT COUNT(SONG_ID) FROM SONGS WHERE COMPOSER = 'Aaron Jay Kernis';
UPDATE COMPOSERS 
SET SONGS = 1, ERA = 'Modern', NATIONALITY = 'American'
WHERE NAME = 'Aaron Jay Kernis';

SELECT COUNT(SONG_ID) FROM SONGS WHERE COMPOSER = 'Alberto Ginastera';
UPDATE COMPOSERS 
SET SONGS = 1, ERA = 'Modern', NATIONALITY = 'Argentinian'
WHERE NAME = 'Alberto Ginastera';

SELECT COUNT(SONG_ID) FROM SONGS WHERE COMPOSER = 'Alexandre Desplat';
UPDATE COMPOSERS 
SET SONGS = 1, ERA = 'Modern', NATIONALITY = 'French'
WHERE NAME = 'Alexandre Desplat';

SELECT COUNT(SONG_ID) FROM SONGS WHERE COMPOSER = 'Anton Bruckner';
