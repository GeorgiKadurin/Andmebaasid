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
--identity(1,1) - määrab igaühele oma numbri

SELECT * FROM opilane;

--andmete lismine
INSERT INTO opilane(eesnimi,perenimi,isikukood,aadress, sisseastumis_kp)

VALUES(
'Georgi', 'Kadurin', '85300680384', 'Saku', '2024-04-08')

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