CREATE DATABASE kinoteatrKadurin;
Use kinoteatrKadurin;

--table filmtype
CREATE TABLE filmType(
	filmTypeID int Primary key identity(1,1),
	filmType varchar(25),
	kirjeldus TEXT);
select * from filmType;
INSERT INTO filmType (filmType, kirjeldus)
VALUES ('2D','Huvitav 2D film');

--------------------------------------------------

--table rezisor

CREATE TABLE rezisor(
	rezisorID int Primary key identity(1,1),
	eesnimi varchar(25),
	perenimi varchar(25));
select * from rezisor;
INSERT INTO rezisor(eesnimi, perenimi)
VALUES ('Jumal','Tamm');

---------------------------------------------------

--table zanr

CREATE TABLE zanr(
	zanrID int Primary key identity(1,1),
	zanrNimi varchar(25),
	zanrKirjeldus TEXT);
select * from zanr;
INSERT INTO zanr(zanrNimi, zanrKirjeldus)
VALUES ('Eluloo','Eluloo film');

-----------------------------------------------------

--kõik select

select * from filmType;
select * from rezisor;
select * from zanr;
select * from piletiMyyk;
select * from kinokava;
select * from film;

-----------------------------------------------------

--table piletiMyyk

CREATE TABLE piletiMyyk(
	piletiMyykID int Primary key identity(1,1),
	kogus int,
	kinokavaID int);
select * from piletiMyyk;
INSERT INTO piletiMyyk(kogus, kinokavaID)
VALUES ('38',3);

--FK: piletiMyyk --> kinokava

ALTER TABLE piletiMyyk ADD FOREIGN KEY (kinokavaID) 
references kinokava(kinokavaID);

DROP TABLE piletiMyyk;

-------------------------------------------------------

--table kinokava

CREATE TABLE kinokava(
	kinokavaID int Primary key identity(1,1),
	kuupaev DATETIME,
	filmNimetus int,
	piletihind int);
select * from kinokava;
INSERT INTO kinokava(kuupaev, filmNimetus, piletihind)
VALUES ('2024-10-22',1, '5');

DROP TABLE kinokava;

--------------------------------------------------------------------

--table film

CREATE TABLE film(
	filmID int Primary key identity(1,1),
	filmNimetus varchar(25),
	zanrID int,
	pikkus int,
	rezisorID int,
	filmTypeID int,
	reklaam image);
select * from film;
INSERT INTO film(filmTypeID,rezisorID, zanrID, filmNimetus, pikkus, reklaam )  --filmNimetus, pikkus,
VALUES (4,4,1,'Tor 2', '4', '0');

DROP TABLE film;

--FK: film --> filmType
ALTER TABLE film ADD FOREIGN KEY (filmTypeID) 
references filmType(filmTypeID);

--FK: film --> rezisor
ALTER TABLE film ADD FOREIGN KEY (rezisorID) 
references rezisor(rezisorID);

--FK: film --> zanrID
ALTER TABLE film ADD FOREIGN KEY (zanrID) 
references zanr(zanrID);

--FK: kinokava --> film
ALTER TABLE kinokava ADD FOREIGN KEY (filmNimetus) 
references film(filmID);



