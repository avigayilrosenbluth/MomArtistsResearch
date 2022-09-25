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

#Adding more information to the rows that are now there will require the UPDATE statement

UPDATE CONCERTS 
SET CONCERTTYPE = 'New Jersey Symphony Classical', GUESTS = 'Yefim Bronfman, Nimbus Dance', DATE = '2022-10-07', TIME = '20:00:00', LOCATION = 'NJPAC in Newark'
WHERE NAME = 'Yefim Bronfman Plays Rachmaninoff';

UPDATE CONCERTS 
SET CONCERTTYPE = 'New Jersey Symphony Classical', GUESTS = 'Michelle Cann', DATE = '2022-10-20', TIME = '13:30:00', LOCATION = 'NJPAC in Newark'
WHERE NAME = 'Xian Zhang Conducts Brahms';

UPDATE CONCERTS 
SET CONCERTTYPE = 'New Jersey Symphony at the Movies', DATE = '2022-10-28', TIME = '20:00:00', LOCATION = 'Count Basie Center for the Arts in Red Bank'
WHERE NAME = 'Jaws in Concert';

UPDATE CONCERTS 
SET CONCERTTYPE = 'Centennial Gala & Concert - New Jersey Symphony Special Concert', GUESTS = 'Yo-Yo Ma, NJ Ballet', DATE = '2022-11-12', TIME = '19:30:00', LOCATION = 'NJPAC in Newark'
WHERE NAME = 'Yo-Yo Ma with New Jersey Symphony';

UPDATE CONCERTS 
SET CONCERTTYPE = 'New Jersey Symphony Classical', GUESTS = 'Awadagin Pratt', DATE = '2022-11-17', TIME = '13:30:00', LOCATION = 'NJPAC in Newark'
WHERE NAME = 'Jessie Montgomery & Mozart';

UPDATE CONCERTS 
SET CONCERTTYPE = 'New Jersey Symphony Classical', GUESTS = 'Richard Goode', DATE = '2022-12-02', TIME = '20:00:00', LOCATION = 'NJPAC in Newark'
WHERE NAME = 'Hugh Wolff Conducts Beethoven & Mozart';

UPDATE CONCERTS 
SET CONCERTTYPE = '51st Anniversary', GUESTS = 'NJ Ballet', DATE = '2022-12-16', TIME = '19:30:00', LOCATION = 'Mayo Performing Arts Center in Morristown'
WHERE NAME = 'New Jersey Ballets Nutcracker with New Jersey Symphony';

UPDATE CONCERTS 
SET CONCERTTYPE = 'New Jersey Symphony Holiday Tradition', GUESTS = 'Ellie Dehn, Maya Lahyani, Miles Mykkanen, Nicholas Newton, Montclair State University Singers', DATE = '2022-12-16', TIME = '20:00:00', LOCATION = 'Richardson Auditorium in Princeton'
WHERE NAME = 'Handels Messiah';

UPDATE CONCERTS 
SET CONCERTTYPE = 'New Jersey Symphony Classical', GUESTS = 'Daniil Trifonov', DATE = '2023-01-06', TIME = '20:00:00', LOCATION = 'Richardson Auditorium in Princeton'
WHERE NAME = 'Daniil Trifonov Performs Brahms';

UPDATE CONCERTS 
SET CONCERTTYPE = 'New Jersey Symphony Classical', GUESTS = 'Hilary Hahn', DATE = '2023-01-28', TIME = '20:00:00', LOCATION = 'Count Basie Center for the Arts in Red Bank'
WHERE NAME = 'Hilary Hahn & Xian Zhang Unite!';

UPDATE CONCERTS 
SET CONCERTTYPE = 'New Jersey Symphony at the Movies', DATE = '2023-02-04', TIME = '14:00:00', LOCATION = 'NJPAC in Newark'
WHERE NAME = 'Harry Potter and the Deathly Hallows Part 2 in Concert';

UPDATE CONCERTS 
SET CONCERTTYPE = 'New Jersey Symphony Special Concert - Symphony Celebration', DATE = '2023-02-24', TIME = '20:00:00', LOCATION = 'Count Basie Center for the Arts in Red Bank'
WHERE NAME = 'The Best of John Williams';

UPDATE CONCERTS 
SET CONCERTTYPE = 'New Jersey Symphony Classical', GUESTS = 'Kelly OConnor, Montclair State University Prima Voce', DATE = '2023-03-03', TIME = '20:00:00', LOCATION = 'NJPAC in Newark'
WHERE NAME = 'Mahler’s Symphony No. 3';

UPDATE CONCERTS 
SET CONCERTTYPE = 'New Jersey Symphony Classical', GUESTS = 'Eric Wyrick, Ha Young Jung, Chris Komer, Garth Greenup, Nayoung Baek', DATE = '2023-03-16', TIME = '13:30:00', LOCATION = 'NJPAC in Newark'
WHERE NAME = 'New Jersey Symphony Stars';

UPDATE CONCERTS 
SET CONCERTTYPE = 'New Jersey Symphony Classical', DATE = '2023-03-25', TIME = '20:00:00', LOCATION = 'NJPAC in Newark'
WHERE NAME = 'Neeme Järvi Conducts Tchaikovsky';

UPDATE CONCERTS 
SET CONCERTTYPE = 'New Jersey Symphony Classical', GUESTS = 'Tiffany Townsend, Reginald Smith Jr., Montclair State University Chorale', DATE = '2023-03-30', TIME = '13:30:00', LOCATION = 'NJPAC in Newark'
WHERE NAME = 'Faurés Requiem';

UPDATE CONCERTS 
SET CONCERTTYPE = 'New Jersey Symphony Classical', GUESTS = 'Meigui Zhang, Jennifer Johnson Cano, Alicia Olatuja, Sean Panikkar, Nathan Berg, Steven Mackey, Princeton University Glee Club', DATE = '2023-04-21', TIME = '20:00:00', LOCATION = 'Richardson Auditorium in Princeton'
WHERE NAME = 'Steven Mackey & Mozart';

UPDATE CONCERTS 
SET CONCERTTYPE = 'New Jersey Symphony Classical', GUESTS = 'George Li', DATE = '2023-04-27', TIME = '13:30:00', LOCATION = 'NJPAC in Newark'
WHERE NAME = 'Symphonie Fantastique';

UPDATE CONCERTS 
SET CONCERTTYPE = 'New Jersey Symphony at the Movies', DATE = '2023-05-18', TIME = '19:30:00', LOCATION = 'Mayo Performing Arts Center in Morristown'
WHERE NAME = 'Star Wars: The Empire Strikes Back in Concert';

UPDATE CONCERTS 
SET CONCERTTYPE = 'New Jersey Symphony Classical', GUESTS = 'Randall Goosby', DATE = '2023-06-01', TIME = '13:30:00', LOCATION = 'NJPAC in Newark'
WHERE NAME = 'Tchaikovskys Violin Concerto';

UPDATE CONCERTS 
SET CONCERTTYPE = 'New Jersey Symphony Classical', GUESTS = 'Joshua Bell', DATE = '2023-06-09', TIME = '20:00:00', LOCATION = 'NJPAC in Newark'
WHERE NAME = 'Season Finale with Joshua Bell';

#Now I'll add the concerts that weren't included in the SONGS table

