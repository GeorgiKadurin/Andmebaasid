SQL SERVER MANAGEMET STUUDIO	

CREATE DATABASE KadurinLOGITpv22; --ab loomine

USE KadurinLOGITpv22;
--tabeli loomine
CREATE TABLE opilane(
id int Primary Key identity (1,1),
eesnimi varchar(20),
perenimi varchar(25) not null,
isikukood char(11) unique,
aadress TEXT,
sisseastumis_kp date
);
--primary key - primaarne võti mis annab unikaalsus
--identity(1,1) - määrab igaühele oma numbri --väli täidetakse automa...

SELECT * FROM opilane;

--andmete lismine
INSERT INTO opilane(eesnimi,perenimi,isikukood,aadress, sisseastumis_kp, ryhmId)

VALUES
('TEST2', 'TEST2', '8539780384', 'Saku', '2024-04-08', 1 );
SELECT * FROM opilane;

-----------------------------------------------------------------------------------------------------

CREATE TABLE Language
(
ID int NOT NULL PRIMARY KEY,
Code char(3) NOT NULL,
Language varchar(50) NOT NULL,
IsOfficial bit,
Percentage decimal(5,2)
); 

--tabeli andmete lisamine 
SELECT * FROM Language;
INSERT INTO Language (ID, Code, Language, IsOfficial, Percentage)
VALUES (100, 'EST', 'Eesti', 1, 80.5)

--Tabeli struktuuri muutmine
ALTER TABLE Language ADD Capital varchar(20);

--Veergu kustutamine
ALTER TABLE Language DROP COLUMN Capital;

INSERT INTO Language (ID, Code, Language, IsOfficial, Percentage, Capital )
VALUES (101, 'FIM', 'Soome', 1, 96.5, 'Helsinki');

--uuendamine
UPDATE Language SET Capital='Tallinn'
WHERE ID=100


--TABLE kustutamine
DROP TABLE Language;

-------------------------------------------------------------------------------------

--tabeli Ryhm loomine

CREATE TABLE ryhm(
rymId int Primary Key identity (1,1),
ryhmNimetus varchar(20) UNIQUE,
osakond char(3));

SELECT * FROM ryhm;

INSERT INTO ryhm(ryhmNimetus,osakond)
VALUES ('TARpv23','IT');

SELECT * FROM ryhm;
SELECT * FROM opilane;

--FOREIGN KEY ---> pk teises tabelis 

ALTER TABLE opilane ADD ryhmId int;

--tabeli opilane uuendamine

Update opilane SET ryhmId=2;

--FK lisamine opilane tabelisse

ALTER TABLE opilane ADD FOREIGN KEY (ryhmId) REFERENCES ryhm(rymID);

-------------------------------------------------------------------------------------------

--uus Töö

CREATE TABLE ryhmajuhataja(
juhataiaID int Primary Key identity (1,1),
eesnimi varchar(20),
perenimi varchar(25) not null,
telefon char(9),
);

INSERT INTO ryhmajuhataja(eesnimi, perenimi, telefon, juhatajaID)
VALUES
('test10', 'test17', '99589748', 1);
SELECT * FROM ryhmajuhataja;


SELECT * FROM ryhmajuhataja;
SELECT * FROM ryhm;

-------------------------------------
ALTER TABLE ryhm ADD ryhmajuhatajaID int;

Update ryhm SET ryhmajuhatajaID=2;

ALTER TABLE ryhm 
ADD FOREIGN KEY (ryhmajuhatajaID) REFERENCES ryhmajuhataja(juhatajaID);



--drop table
--

---------------------------------------------------------------------------------------------------------
drop table hinnang;
--uus töö
CREATE TABLE hinnang(
hinnangID int Primary Key identity (1,1),
kuupäev	DATE,
õpilaneID varchar(20),
ryhmajuhatajID varchar(25),
hinnang TEXT,
);

INSERT INTO hinnang(kuupäev ,hinnang, ryhmajuhatajaID, id)

VALUES
('2024-08-13','cool', 1, 2 );
SELECT * FROM hinnang;



SELECT * FROM hinnang;
SELECT * FROM ryhmajuhataja;
SELECT * FROM opilane;

ALTER TABLE hinnang ADD ryhmajuhatajaID int;
Update hinnang SET ryhmajuhatajaID=1;
ALTER TABLE hinnang ADD FOREIGN KEY (ryhmajuhatajaID) REFERENCES ryhmajuhataja(juhatajaID);


ALTER TABLE hinnang ADD id int;
Update hinnang SET id=1;

ALTER TABLE hinnang ADD FOREIGN KEY (id) REFERENCES opilane(id);



