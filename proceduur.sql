CREATE TABLE film(
filmId int PRIMARY KEY AUTO_INCREMENT,
filmNimetus varchar(50),
kestvus int,
rezisoor varchar(50),
v_aasta int);

--filmiNimetus otsing esimese tähe järgi
CREATE PROCEDURE `otsing1Taht`(IN `taht` CHAR(1)) NOT DETERMINISTIC CONTAINS SQL SQL SECURITY DEFINER 
Begin
	SELECT * FROM film
	WHERE filmNimetus LIKE CONCAT(taht,'%');
End;


--proceduuri käivitamine
call otsing1Taht ('C');


--PROTSEDUur mis kutsutab sisestatud id järgi
CREATE PROCEDURE `kustutafilm`(IN `id` INT) NOT DETERMINISTIC CONTAINS SQL SQL SECURITY DEFINER 
	BEGIN 
	SELECT * FROM film;
	DELETE FROM film
	WHERE filmId=id; 
        SELECT * FROM film; 
END; 


--proceduuri käivitamine
call kustutafilm (15);/ teosta


	
--proceduur , mis loeb filmide arv kokku
BEGIN
SELECT COUNT(*) AS 'filmide Arv' FROM film;
END

	
--proceduuri käivitamine
CALL `filmideArv`(); 

--proceduur mis täibeli film
Begin
insert into film (filmNimetus, kestvus, rezisoor, v_aasta) 
values (@uusfilm,@kestvus ,@rezisoor,@aasta );
SELECT * FROM film;
END;

--proceduuri käivitamine
SET @p0='kevad on kohal'; SET @p1='2'; SET @p2='Loodus Maa'; SET @p3='2024'; CALL `lisaFilm`(@p0, @p1, @p2, @p3); 



--proceduur, mis uuendab rezisööri andmed filmiNimi järgi

BEGIN
select * from film WHERE filmNimetus LIKE concat (filmNimi);
UPDATE film SET rezisoor=uusrezisoor
WHERE filmNimetus LIKE concat (filmNimi);
select * from film WHERE filmNimetus LIKE concat (filmNimi);
END






-------------------------------------------------------------------------------
KyberSport iseseisav töö



